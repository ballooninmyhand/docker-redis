#!/usr/bin/bash
# 解决报错：WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
echo 511 > /proc/sys/net/core/somaxconn

# 解决报错：WARNING: you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix thisissue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain thesetting after a reboot. Redis must be restarted after THP is disabled.
echo never > /sys/kernel/mm/transparent_hugepage/enabled

# 指定配置文件
redis-server /etc/redis/redis.conf &
redis-sentinel /etc/redis/sentinel.conf