#!/bin/bash
# 等待桌面环境完全启动
sleep 3

# 使用eom打开指定文件夹中的图片，并开启幻灯片模式
eom -s /home/33vision/tv/TVImages &

# 监控指定文件夹并自动清理以._开头的隐藏文件
WATCH_DIR="/home/33vision/tv/TVImages"

echo "Starting to monitor $WATCH_DIR for new files and modifications..."
inotifywait -m -e create -e close_write -e moved_to "$WATCH_DIR" |
while read path action file; do
    echo "Detected $action on $file at $path"
    # 查找并删除所有以._开头的隐藏文件
    echo "Running find command in $WATCH_DIR to remove hidden files..."
    find "$WATCH_DIR" -type f -name "._*" -exec echo "Deleting file {}" \; -exec rm {} \;
    echo "Cleanup done."
done
