#!/bin/bash
docker run -itd --stop-signal=RTMIN+3 --cap-add SYS_ADMIN --tmpfs /run --tmpfs /run/lock -v /sys/fs/cgroup:/sys/fs/cgroup:ro gialia/opensuse:latest /sbin/init 


# mount -o remount,rw /sys/fs/cgroup
# mkdir -p /sys/fs/cgroup/systemd