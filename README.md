# IPTV 个人直播源

基于 [vbskycn/iptv](https://github.com/vbskycn/iptv) 的个人 IPTV 直播源仓库，自动更新维护。

## 📡 直播源地址

| 格式 | IPv4 | IPv6 |
|------|------|------|
| **TXT** | `https://raw.githubusercontent.com/你的用户名/iptv/main/tv/iptv4.txt` | `https://raw.githubusercontent.com/你的用户名/iptv/main/tv/iptv6.txt` |
| **M3U** | `https://raw.githubusercontent.com/你的用户名/iptv/main/tv/iptv4.m3u` | `https://raw.githubusercontent.com/你的用户名/iptv/main/tv/iptv6.m3u` |

## 📺 频道分类

- 央视频道 — CCTV-1 ~ CCTV-17, CGTN 等
- 卫视频道 — 湖南卫视、浙江卫视、东方卫视、江苏卫视等全国卫视
- 电影频道 — 电影相关频道
- 数字频道 — 数字付费频道
- 儿童频道 — 少儿动画频道
- 地方频道 — 各地地方台
- 纪录频道 — 纪录片频道
- 体育频道 — 体育赛事频道
- 音乐频道 — 音乐相关频道
- 直播中国 — 全国各地风景慢直播

## 🛠 使用方式

### 在播放器中打开

支持以下播放软件直接打开链接：

- **VLC Media Player** — 媒体 → 打开网络串流 → 粘贴 M3U 链接
- **PotPlayer** — 打开链接 → 粘贴 TXT 或 M3U 链接
- **IPTV Smarters** / **TiviMate** (Android) — 添加 playlist URL
- **GSE Smart IPTV** (iOS) — 添加远程 playlist
- **Kodi** — 使用 IPTV Simple Client 插件添加 M3U 链接

### 在 TVBox 等软件中使用

在 TVBox / 影视仓 等软件的配置接口中输入 TXT 格式的链接地址即可。

## 🔄 自动更新

通过 GitHub Actions **每 6 小时**自动检查并更新直播源：
- 北京时间 02:00 / 08:00 / 14:00 / 20:00

也可在 GitHub Actions 页面手动触发更新（Workflow Dispatch）。

## 📝 TXT 格式说明

```
频道分类,#genre#
频道名称,播放地址
```

示例：
```
央视频道,#genre#
CCTV1,https://example.com/cctv1.m3u8
CCTV2,https://example.com/cctv2.m3u8
```

## 📝 M3U 格式说明

M3U 格式带台标和 EPG 信息，支持更多播放器功能：

```
#EXTM3U x-tvg-url="http://epg.51zmt.top:8000/e.xml"
#EXTINF:-1 tvg-name="CCTV1" tvg-logo="https://example.com/logo.png" group-title="央视频道", CCTV1
https://example.com/cctv1.m3u8
```

## ⚖️ 免责声明

- 所有直播源均来自网络公开资源
- 本仓库仅作数据收集与转发，不存储任何流媒体内容
- 请勿将本项目用于商业用途

## 🙏 鸣谢

- [vbskycn/iptv](https://github.com/vbskycn/iptv)
- [live.zbds.top](https://live.zbds.top)
