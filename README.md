# clamav-db-server

## 描述

**clamav-db-server** 是一个可简单提供 **clamav** 病毒库的服务, 主要机制是通过 `freshclam` 同步下来 **clamav** 官方的病毒库后再提供 rsync 服务供用户下载.

## 使用方法

* `git clone https://github.com/genee-tools/clamav-db-server.git`
* `cd clamav-db-server` 进入到 clamav-db-server 目录
* `git submodule init && git submodule update`, 进行代码更新
* `cd clamav-freshclam && ./build.sh && ./add_cron.sh && cd ../` 增加自动更新到 cron 中, cron 时间为每天 4 点一次
* `./run.sh && ./clamav-freshclam/run.sh` 运行 clamav-db-server 并更新病毒库
