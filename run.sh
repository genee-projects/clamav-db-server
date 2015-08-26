#!/bin/bash

# 删除 rsync-serve
docker rm -f clamav-db-server

# 构建
docker build -t 'genee/clamav-db-server' docker

# 运行服务
docker run -d --name=clamav-db-server -p 873:873 -v $(pwd)/clamav/:/var/lib/clamav/ genee/clamav-db-server

echo "done!"
