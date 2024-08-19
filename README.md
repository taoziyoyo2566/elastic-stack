# 
```document url : [https://www.elastic.co/blog/getting-started-with-the-elastic-stack-and-docker-compose]

#privilige
init.sh



echo "vm.max_map_count=262144" | sudo tee -a /etc/sysctl.conf

cat /etc/sysctl.d/custom.conf 
# 网络相关参数
net.core.somaxconn=1024
net.ipv4.tcp_max_syn_backlog=4096
net.ipv4.tcp_fin_timeout=30
net.core.netdev_max_backlog=5000

# 文件系统相关参数
fs.file-max=2097152
fs.inotify.max_user_watches=524288

# 内存管理相关参数
vm.swappiness=10
vm.dirty_ratio=15
vm.dirty_background_ratio=5

# 进程和线程相关参数
kernel.pid_max=65536
kernel.threads-max=32768

# TCP/IP 协议栈参数
net.ipv4.tcp_tw_reuse=1
net.ipv4.tcp_rmem=4096 87380 6291456
net.ipv4.tcp_wmem=4096 16384 4194304
vm.max_map_count=2262144

#使修改生效
sudo sysctl -p

