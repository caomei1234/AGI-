# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:

- Camera names and locations
- SSH hosts and aliases
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

## GitHub 配置（永久 · 无需Token）

- **仓库**: `git@github.com:caomei1234/AGI-.git`（SSH方式）
- **推送命令**: `git push origin master`（无需用户名密码）
- **SSH密钥**: `~/.ssh/id_ed25519`（ed25519，2026-06-06生成）
- **GitHub账户**: caomei1234
- **旧凭证**: `~/.git-credentials` 已删除（token不安全，不再使用）
- **主机密钥**: `~/.ssh/known_hosts` 已配置 github.com

**失忆AI必读**：推送前不需要申请token。SSH密钥已永久配置。直接 `git push origin master` 即可。

---

Add whatever helps you do your job. This is your cheat sheet.
