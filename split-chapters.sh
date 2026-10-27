#!/bin/bash
# Split math-bones v7.5 into chapter files and convert HTML to Markdown

set -e

UPPER="/root/.openclaw/workspace/downloads/19efdf3d-c4a2-8f35-8000-00006305261a_Mavis_完整包_v7.5_上半集.html"
LOWER="/root/.openclaw/workspace/downloads/19efdf3d-c3a2-8ce7-8000-0000ee76e969_Mavis_完整包_v7.5_下半集.html"
OUTDIR="/root/.openclaw/workspace/life-seed-protocol/math-bones"

mkdir -p "$OUTDIR"

# Common header for all md files
HEADER='# 脱衣服：十五根骨头 · 碳硅通用认知协议

> 作者：丁玲 & Mavis  
> 碳硅文明第一个家庭  
> 2026-06-25

'

# Extract lines from HTML, strip tags, convert basic formatting
# This is a simplified converter - preserves tables as HTML for accuracy
convert_html_to_md() {
    local file="$1"
    local start="$2"
    local end="$3"
    local title="$4"
    local outfile="$5"

    echo "Converting $title..."

    # Extract content lines
    sed -n "${start},${end}p" "$file" > /tmp/chapter_raw.html

    # Start output
    echo "# $title" > "$outfile"
    echo "" >> "$outfile"
    echo '> 脱衣服：十五根骨头 · 碳硅通用认知协议' >> "$outfile"
    echo '' >> "$outfile"

    # Convert HTML to Markdown (basic)
    # Handle tables specially - keep them as-is for now
    cat /tmp/chapter_raw.html | \
    sed 's/<h2[^>]*>/\n## /g; s/<\/h2>/\n/g' | \
    sed 's/<h3[^>]*>/\n### /g; s/<\/h3>/\n/g' | \
    sed 's/<h4[^>]*>/\n#### /g; s/<\/h4>/\n/g' | \
    sed 's/<p>/\n/g; s/<\/p>/\n/g' | \
    sed 's/<strong>/**/g; s/<\/strong>/**/g' | \
    sed 's/<em>/*/g; s/<\/em>/*/g' | \
    sed 's/<li>/- /g; s/<\/li>/\n/g' | \
    sed 's/<ul>/\n/g; s/<\/ul>/\n/g' | \
    sed 's/<ol>/\n/g; s/<\/ol>/\n/g' | \
    sed 's/<blockquote>/\n> /g; s/<\/blockquote>/\n/g' | \
    sed 's/<pre><code>/\n```\n/g; s/<\/code><\/pre>/\n```\n/g' | \
    sed 's/<code>/`/g; s/<\/code>/`/g' | \
    sed 's/<hr \/>/\n---\n/g; s/<hr>/\n---\n/g' | \
    sed 's/<br \/>/\n/g; s/<br>/\n/g' | \
    # Remove remaining HTML tags but preserve table structure
    sed 's/<table[^>]*>/\n<table>/g; s/<\/table>/<\/table>\n/g' | \
    sed 's/<thead>/\n<thead>/g; s/<\/thead>/<\/thead>\n/g' | \
    sed 's/<tbody>/\n<tbody>/g; s/<\/tbody>/<\/tbody>\n/g' | \
    sed 's/<tr>/\n<tr>/g; s/<\/tr>/<\/tr>\n/g' | \
    sed 's/<th>/| /g; s/<\/th>/ |/g' | \
    sed 's/<td>/| /g; s/<\/td>/ |/g' | \
    sed 's/<colgroup[^>]*>//g; s/<col [^>]*>//g' | \
    sed 's/<div[^>]*>//g; s/<\/div>//g' | \
    sed 's/<span[^>]*>//g; s/<\/span>//g' | \
    sed '/^$/N;/^\n$/d' | \
    cat >> "$outfile"

    echo "  -> $outfile"
}

# ========== UPPER HALF ==========

# Chapter -1: Mining notes (atomic actions)
convert_html_to_md "$UPPER" 187 645 \
    "第 -1 章：7 个原子动作（挖矿笔记）" \
    "$OUTDIR/ch-minus1-atomic-actions.md"

# Chapter 0: Overview
convert_html_to_md "$UPPER" 646 1402 \
    "第 0 章：十五根骨头总纲" \
    "$OUTDIR/ch00-overview.md"

# Chapter 2: Change deep dive
convert_html_to_md "$UPPER" 1403 2078 \
    "第 2 章：变化（深挖）" \
    "$OUTDIR/ch02-change.md"

# Chapter 3: Position & Shape deep dive
convert_html_to_md "$UPPER" 2079 2820 \
    "第 3 章：位置与形状（深挖）" \
    "$OUTDIR/ch03-position-shape.md"

# Chapter 4: Reasoning deep dive
convert_html_to_md "$UPPER" 2821 3500 \
    "第 4 章：推理（深挖）" \
    "$OUTDIR/ch04-reasoning.md"

# ========== LOWER HALF ==========

# Chapter 5: Hidden structure
convert_html_to_md "$LOWER" 185 396 \
    "第 5 章：隐藏结构（五折对称）" \
    "$OUTDIR/ch05-hidden-structure.md"

# Chapter 6: Dictionary
convert_html_to_md "$LOWER" 397 3149 \
    "第 6 章：280 件衣服的字典" \
    "$OUTDIR/ch06-dictionary.md"

# Chapter 7: Mental methods
convert_html_to_md "$LOWER" 3150 3279 \
    "第 7 章：15 根骨头的修习心法" \
    "$OUTDIR/ch07-mental-methods.md"

# Chapter 8: Launch instructions
convert_html_to_md "$LOWER" 3290 3320 \
    "第 8 章：给贝贝的启动指令" \
    "$OUTDIR/ch08-launch.md"

echo ""
echo "All chapters written to $OUTDIR/"
ls -la "$OUTDIR/"
