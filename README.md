# clean-junk

安全的 Windows 系统垃圾清理工具（单文件批处理 + 内嵌 PowerShell）。

只清理临时文件与缓存垃圾，**绝不删除个人数据**。

## 特性

- 只清理明确的垃圾目录：用户/系统临时文件、Windows 更新下载缓存、传递优化缓存、错误报告、缩略图缓存等
- **安全红线**：不碰文档 / 桌面 / 下载 / 图片 / 收藏夹 / 已安装程序 / 注册表；不清理 Prefetch、Windows.old、更新历史（`SoftwareDistribution\DataStore`）、WinSxS 原始组件
- 被其它程序占用的文件自动跳过，不强制删除
- 遍历所有用户配置文件（`C:\Users\*`），不受 UAC 提权后 `%TEMP%` 切换影响
- 递归删除跳过目录联接（junction），绝不穿透删除目标内容
- `preview` 模式只统计不删除，且**无需管理员权限**
- 自动检测管理员权限，必要时触发 UAC 提权
- 在 Windows Terminal 中运行以正确显示中文（无 WT 时自动转接；无 WT 环境降级为字体设置 + 英文警告）

## 用法

双击 `clean_junk.bat` 进入交互菜单，或命令行指定模式：

| 命令 | 说明 |
|---|---|
| `clean_junk.bat` | 交互菜单 |
| `clean_junk.bat preview` | 只统计可清理空间（免提权） |
| `clean_junk.bat quick` | 标准清理（推荐） |
| `clean_junk.bat recycle` | 标准清理 + 清空回收站 |
| `clean_junk.bat full` | 深度清理（回收站 + 浏览器缓存 + 系统日志 + 崩溃转储） |
| `clean_junk.bat dism` | 整理系统组件存储（耗时 10~30 分钟，可选） |

## 清理范围

| 阶段 | 内容 |
|---|---|
| 标准 | 会话/系统临时目录、各用户 Temp、Windows 更新下载缓存、传递优化缓存、WER 错误报告、缩略图缓存、旧版 Web 缓存 |
| + 回收站 | 清空所有固定驱动器的 `$Recycle.Bin` |
| + 深度 | 崩溃转储（CrashDumps / Minidump / MEMORY.DMP）、Panther/CBS/WindowsUpdate 日志、Chrome / Edge / Firefox / Opera / Brave / Vivaldi 浏览器缓存 |
| DISM | `Dism /Online /Cleanup-Image /StartComponentCleanup`（可选，不会删除个人文件） |

## 环境要求

- Windows 10 / 11（批处理 + PowerShell 5.1+）
- 执行实际清理需要管理员权限（UAC）
- 建议安装 Windows Terminal；未安装时脚本仍可运行，但在部分系统上中文可能无法正常渲染

## 安全设计说明

- 清理入口带安全阀：路径必须是 `盘符:\子路径`，拒绝盘符根目录与 UNC 路径
- 统计与删除使用同一套遍历逻辑（跳过 ReparsePoint、逐条容错），避免“统计到的”与“会删到的”不一致
- 更新缓存清理前会临时停止 `wuauserv` / `bits` / `dosvc`，清完自动重启

## License

MIT
