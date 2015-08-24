# clamav-db-server

## 描述

**clamav-db-server** 是一个可简单提供 **clamav** 病毒库的服务, 主要机制是通过 `freshclam` 同步下来 **clamav** 官方的病毒库后再提供 rsync 服务供用户下载.
