#!/bin/bash

# 删除 rsync-serve
docker rm -f rsync-server

# 构建
docker build -t 'genee/rsync-server' docker

# 运行服务
docker run -d --name=rsync-server -p 873:873 -v $(pwd)/clamav/:/var/lib/clamav/ genee/rsync-server

echo "done!"
