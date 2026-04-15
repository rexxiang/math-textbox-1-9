#!/usr/bin/env python3
r"""
md2tex.py — Convert a math textbook Markdown chapter to LaTeX.

Usage:
    python3 scripts/md2tex.py <input.md> <output.tex>

Conversion rules:
  # §X.Y Title           → \chapter{§X.Y Title}\label{sec:X.Y}
  # Title (no §)         → \chapter*{Title} + \addcontentsline
  > **前置知识**：...    → \prerequisite{...}
  > **适用年级**：...    → \gradelevel{...}
  ## Section             → \section*{Section}
  ### 引入情境...        → \begin{explore}...\end{explore}
  ### 概念建立...        → \begin{understand}...\end{understand}
  ### 典型例题...        → \begin{workedexamples}...\end{workedexamples}
  ### 关键总结...        → \begin{keytakeaway}...\end{keytakeaway}
  ### 练一练...          → \begin{practice}...\end{practice}
  ## 参考答案            → \begin{answer}...\end{answer}
  ![...](path.svg)       → % TODO-TikZ: [alt text] (was: path.svg)
  **bold**               → \textbf{bold}
  *italic*               → \emph{italic}
  `code`                 → \texttt{code}
  ---                    → blank line (horizontal rules ignored)
  | table |              → tabular environment (best-effort)
  $...$                  → $...$ (kept as-is)
  $$...$$ (multiline)    → \[ ... \]
"""

import re
import sys
from pathlib import Path


SECTION_ENV_MAP = {
    '引入情境': 'explore',
    'Explore': 'explore',
    '概念建立': 'understand',
    'Build Understanding': 'understand',
    '典型例题': 'workedexamples',
    'Worked Examples': 'workedexamples',
    '关键总结': 'keytakeaway',
    'Key Takeaways': 'keytakeaway',
    '练一练': 'practice',
    'Practice': 'practice',
}


def inline_markup(text: str) -> str:
    """Convert inline Markdown markup to LaTeX (math spans preserved)."""
    # Bold: **text** → \textbf{text}
    text = re.sub(r'\*\*(.+?)\*\*', r'\\textbf{\1}', text)
    # Italic: *text* → \emph{text}  (not inside $...$, best-effort)
    text = re.sub(r'(?<!\$)\*([^*\n]+?)\*(?!\$)', r'\\emph{\1}', text)
    # Code: `text` → \texttt{text}
    text = re.sub(r'`([^`\n]+?)`', r'\\texttt{\1}', text)
    return text


def parse_blockquote(line: str):
    """Parse > **key**：value blockquote lines. Returns (key, value) or None."""
    m = re.match(r'^>\s*\*\*(.+?)\*\*[：:]\s*(.+)', line.strip())
    if m:
        return m.group(1).strip(), m.group(2).strip()
    return None


def table_to_latex(lines: list) -> str:
    """Convert a Markdown table (list of lines) to a LaTeX tabular."""
    rows = []
    col_count = 0
    for line in lines:
        if re.match(r'^\|[-| :]+\|$', line.strip()):
            continue  # separator row
        cells = [c.strip() for c in line.strip().strip('|').split('|')]
        col_count = max(col_count, len(cells))
        rows.append(cells)
    if not rows:
        return ''
    col_spec = 'l' * col_count
    out = [
        '\\begin{center}',
        f'\\begin{{tabular}}{{{col_spec}}}',
        '\\toprule',
    ]
    for i, row in enumerate(rows):
        while len(row) < col_count:
            row.append('')
        cells_tex = [inline_markup(c) for c in row]
        out.append(' & '.join(cells_tex) + ' \\\\')
        if i == 0:
            out.append('\\midrule')
    out.append('\\bottomrule')
    out.append('\\end{tabular}')
    out.append('\\end{center}')
    return '\n'.join(out)


def convert(md_text: str) -> str:
    lines = md_text.split('\n')
    output = []
    i = 0
    current_env = None  # track open tcolorbox environment
    table_lines = []
    in_table = False

    def close_env():
        nonlocal current_env
        if current_env:
            output.append(f'\\end{{{current_env}}}')
            output.append('')
            current_env = None

    while i < len(lines):
        line = lines[i]
        raw = line

        # ── Horizontal rule → blank line ──────────────────────────
        if re.match(r'^---+$', line.strip()):
            close_env()
            output.append('')
            i += 1
            continue

        # ── H1: file title or §X.Y chapter ───────────────────────
        if re.match(r'^# [^#]', line):
            close_env()
            title = line[2:].strip()
            m = re.match(r'§(\d+)\.(\d+)\s+(.*)', title)
            if m:
                label = f'sec:{m.group(1)}.{m.group(2)}'
                output.append(f'\\chapter{{{title}}}')
                output.append(f'\\label{{{label}}}')
            else:
                output.append(f'\\chapter*{{{title}}}')
                output.append(f'\\addcontentsline{{toc}}{{chapter}}{{{title}}}')
            output.append('')
            i += 1
            continue

        # ── Blockquote: 前置知识 / 适用年级 ──────────────────────
        if line.startswith('>'):
            close_env()
            parsed = parse_blockquote(line)
            if parsed:
                key, val = parsed
                if '前置知识' in key:
                    output.append(f'\\prerequisite{{{inline_markup(val)}}}')
                elif '适用年级' in key:
                    output.append(f'\\gradelevel{{{inline_markup(val)}}}')
                elif '⚠' in key or '易错' in key:
                    # Error reminders → keytakeaway
                    output.append('\\begin{keytakeaway}')
                    output.append(f'\\textbf{{⚠ 易错提醒}}')
                    output.append('')
                    output.append(inline_markup(val))
                    output.append('\\end{keytakeaway}')
                elif '💡' in key or '拓展' in key or '知识拓展' in key:
                    output.append('\\begin{keytakeaway}')
                    output.append(f'\\textbf{{💡 知识拓展}}')
                    output.append('')
                    output.append(inline_markup(val))
                    output.append('\\end{keytakeaway}')
                else:
                    content = inline_markup(val)
                    output.append(f'\\begin{{quote}}\\textbf{{{key}：}}{content}\\end{{quote}}')
            else:
                content = line.lstrip('> ').strip()
                # Multi-line blockquote: collect continuation lines
                bq_lines = [inline_markup(content)]
                j = i + 1
                while j < len(lines) and lines[j].startswith('>'):
                    bq_lines.append(inline_markup(lines[j].lstrip('> ').strip()))
                    j += 1
                if j > i + 1:
                    i = j - 1
                output.append('\\begin{quote}')
                output.extend(bq_lines)
                output.append('\\end{quote}')
            output.append('')
            i += 1
            continue

        # ── H3: five-step section ─────────────────────────────────
        if re.match(r'^### [^#]', line):
            heading = line[4:].strip()
            env_name = None
            for key, env in SECTION_ENV_MAP.items():
                if key in heading:
                    env_name = env
                    break
            if env_name:
                close_env()
                output.append(f'\\begin{{{env_name}}}')
                current_env = env_name
            else:
                close_env()
                output.append(f'\\subsection*{{{inline_markup(heading)}}}')
            output.append('')
            i += 1
            continue

        # ── H2: major section or 参考答案 ─────────────────────────
        if re.match(r'^## [^#]', line):
            close_env()
            heading = line[3:].strip()
            if '参考答案' in heading:
                output.append('\\begin{answer}')
                current_env = 'answer'
            else:
                output.append(f'\\section*{{{inline_markup(heading)}}}')
            output.append('')
            i += 1
            continue

        # ── SVG image reference → TikZ placeholder ────────────────
        img_m = re.match(r'!\[(.+?)\]\((.+?\.svg)\)', line.strip())
        if img_m:
            alt, path = img_m.group(1), img_m.group(2)
            output.append(f'% TODO-TikZ: {alt} (was: {path})')
            output.append('')
            i += 1
            continue

        # ── Markdown table ─────────────────────────────────────────
        if line.startswith('|'):
            if not in_table:
                in_table = True
                table_lines = []
            table_lines.append(line)
            i += 1
            if i < len(lines) and lines[i].startswith('|'):
                continue
            # End of table
            in_table = False
            output.append(table_to_latex(table_lines))
            output.append('')
            table_lines = []
            continue

        # ── Ordered list items ─────────────────────────────────────
        if re.match(r'^\d+\.\s+', line):
            list_items = []
            while i < len(lines) and re.match(r'^\d+\.\s+', lines[i]):
                item = re.sub(r'^\d+\.\s+', '', lines[i]).strip()
                list_items.append(item)
                i += 1
            output.append('\\begin{enumerate}')
            for item in list_items:
                output.append(f'  \\item {inline_markup(item)}')
            output.append('\\end{enumerate}')
            output.append('')
            continue

        # ── Unordered list items ───────────────────────────────────
        if re.match(r'^[-*]\s+', line):
            list_items = []
            while i < len(lines) and re.match(r'^[-*]\s+', lines[i]):
                item = re.sub(r'^[-*]\s+', '', lines[i]).strip()
                list_items.append(item)
                i += 1
            output.append('\\begin{itemize}')
            for item in list_items:
                output.append(f'  \\item {inline_markup(item)}')
            output.append('\\end{itemize}')
            output.append('')
            continue

        # ── Display math block spanning multiple lines ─────────────
        stripped = line.strip()
        if stripped == '$$':
            math_lines = []
            i += 1
            while i < len(lines) and lines[i].strip() != '$$':
                math_lines.append(lines[i])
                i += 1
            i += 1  # consume closing $$
            output.append('\\[')
            output.extend(math_lines)
            output.append('\\]')
            output.append('')
            continue

        # ── Inline $$ on one line: $$expr$$ ───────────────────────
        if stripped.startswith('$$') and stripped.endswith('$$') and len(stripped) > 4:
            inner = stripped[2:-2].strip()
            output.append(f'\\[\n{inner}\n\\]')
            output.append('')
            i += 1
            continue

        # ── Blank line ─────────────────────────────────────────────
        if not stripped:
            output.append('')
            i += 1
            continue

        # ── Regular paragraph line ─────────────────────────────────
        output.append(inline_markup(line))
        i += 1

    close_env()
    return '\n'.join(output)


def main():
    if len(sys.argv) != 3:
        print(f'Usage: {sys.argv[0]} <input.md> <output.tex>', file=sys.stderr)
        sys.exit(1)
    src = Path(sys.argv[1])
    dst = Path(sys.argv[2])
    dst.parent.mkdir(parents=True, exist_ok=True)
    text = src.read_text(encoding='utf-8')
    result = convert(text)
    dst.write_text(result, encoding='utf-8')
    print(f'Converted: {src} → {dst}')


if __name__ == '__main__':
    main()
