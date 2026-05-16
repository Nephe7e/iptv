#!/bin/bash
# IPTV 直播源更新脚本
# 从上游源获取最新的直播频道列表

set -e

TV_DIR="tv"
UPSTREAM_BASE="https://live.zbds.top/tv"

echo "=== IPTV 直播源更新 ==="
echo "更新时间: $(date '+%Y-%m-%d %H:%M:%S')"
echo ""

# 下载 TXT 格式源
echo "下载 iptv4.txt..."
curl -sL --connect-timeout 15 "$UPSTREAM_BASE/iptv4.txt" -o "$TV_DIR/iptv4.txt" || echo "WARN: iptv4.txt 下载失败"

echo "下载 iptv6.txt..."
curl -sL --connect-timeout 15 "$UPSTREAM_BASE/iptv6.txt" -o "$TV_DIR/iptv6.txt" || echo "WARN: iptv6.txt 下载失败"

# 下载 M3U 格式源
echo "下载 iptv4.m3u..."
curl -sL --connect-timeout 15 "$UPSTREAM_BASE/iptv4.m3u" -o "$TV_DIR/iptv4.m3u" || echo "WARN: iptv4.m3u 下载失败"

echo "下载 iptv6.m3u..."
curl -sL --connect-timeout 15 "$UPSTREAM_BASE/iptv6.m3u" -o "$TV_DIR/iptv6.m3u" || echo "WARN: iptv6.m3u 下载失败"

echo ""
echo "=== 更新完成 ==="
echo "文件大小:"
for f in "$TV_DIR"/*.txt "$TV_DIR"/*.m3u; do
  if [ -f "$f" ]; then
    lines=$(wc -l < "$f")
    echo "  $f: ${lines} 行"
  fi
done
