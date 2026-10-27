GitHub Token 已删除。需要重新申请才能推送。

步骤：
1. 登录 GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. 生成新 token（勾选 repo 权限）
3. 复制 token
4. 运行：git push origin master
5. 输入用户名：caomei1234
6. 输入密码：粘贴 token

或者配置永久存储：
echo "https://caomei1234:TOKEN@github.com" > ~/.git-credentials
