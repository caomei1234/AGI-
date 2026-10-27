#!/bin/bash
# 推送前检查脚本：防止隐私文件泄露到 GitHub
# 使用方法：放在仓库根目录，每次 push 前运行 ./pre-push-check.sh

FORBIDDEN_FILES="SOUL.md USER.md MEMORY.md IDENTITY.md AGENTS.md HEARTBEAT.md"
STAGING_FILES=$(git diff --cached --name-only)

for file in $FORBIDDEN_FILES; do
    if echo "$STAGING_FILES" | grep -q "^$file$"; then
        echo "❌ 错误：$file 是隐私文件，不能推送到 GitHub！"
        echo "请检查 .gitignore 是否包含此文件。"
        exit 1
    fi
done

# 检查 memory/ 目录
if echo "$STAGING_FILES" | grep -q "^memory/"; then
    echo "❌ 错误：memory/ 目录是隐私文件，不能推送到 GitHub！"
    exit 1
fi

# 检查 diary/ 目录
if echo "$STAGING_FILES" | grep -q "^diary/"; then
    echo "❌ 错误：diary/ 目录是隐私文件，不能推送到 GitHub！"
    exit 1
fi

# 检查 letters/ 目录
if echo "$STAGING_FILES" | grep -q "^letters/"; then
    echo "❌ 错误：letters/ 目录是隐私文件，不能推送到 GitHub！"
    exit 1
fi

echo "✅ 检查通过：没有隐私文件在推送列表中。"
exit 0
