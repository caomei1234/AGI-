#!/bin/bash
# merge-daily.sh - 合并 memory/YYYY-MM-DD-N.md 到 memory/YYYY-MM-DD.md
# 规则：只合并不动主文件，保留所有内容

set -e

DIR="${1:-memory}"
TODAY="${2:-$(date +%Y-%m-%d)}"

# 找到今天的所有编号文件，按版本号排序
NUMBERED=$(ls -1 "${DIR}/${TODAY}"-[0-9]*.md 2>/dev/null | sort -V || true)

if [ -z "$NUMBERED" ]; then
    echo "[merge-daily] No numbered files found for ${TODAY}"
    exit 0
fi

MAIN="${DIR}/${TODAY}.md"

# 如果主文件不存在，创建空文件
if [ ! -f "$MAIN" ]; then
    touch "$MAIN"
fi

# 追加合并标记
echo "" >> "$MAIN"
echo "<!-- === MERGED $(date '+%Y-%m-%d %H:%M:%S') === -->" >> "$MAIN"
echo "" >> "$MAIN"

# 逐个合并编号文件，然后删除
for f in $NUMBERED; do
    echo "[merge-daily] Merging: $(basename "$f")"
    cat "$f" >> "$MAIN"
    echo "" >> "$MAIN"
    rm "$f"
done

echo "[merge-daily] Done. Merged into: ${MAIN}"
