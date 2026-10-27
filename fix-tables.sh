#!/bin/bash
# Fix HTML table tags in all math-bones chapter files

DIR="/root/.openclaw/workspace/life-seed-protocol/math-bones"

cd "$DIR"

for f in *.md; do
    # Count before
    before=$(grep -c '<table\|</table>\|<thead\|</thead>\|<tbody\|</tbody>\|<tr\|</tr>\|<colgroup\|</colgroup>\|<col ' "$f" 2>/dev/null || echo 0)
    
    # Remove all HTML table structural tags (but keep | separators from td/th conversion)
    sed -i \
        -e 's/<table[^>]*>//g' \
        -e 's|</table>||g' \
        -e 's/<thead[^>]*>//g' \
        -e 's|</thead>||g' \
        -e 's/<tbody[^>]*>//g' \
        -e 's|</tbody>||g' \
        -e 's/<colgroup[^>]*>//g' \
        -e 's|</colgroup>||g' \
        -e 's/<col [^>]*>//g' \
        -e 's/<tr[^>]*>//g' \
        -e 's|</tr>||g' \
        -e 's/<div[^>]*>//g' \
        -e 's|</div>||g' \
        -e 's/<span[^>]*>//g' \
        -e 's|</span>||g' \
        "$f"
    
    # Remove empty lines that were just structural tags
    sed -i '/^[[:space:]]*$/N;/^[[:space:]]*\n[[:space:]]*$/d' "$f"
    
    after=$(grep -c '<table\|</table>\|<thead\|</thead>\|<tbody\|</tbody>\|<tr\|</tr>\|<colgroup\|</colgroup>\|<col ' "$f" 2>/dev/null || echo 0)
    
    echo "$f: $before → $after HTML tags remaining"
done

echo "Done."
