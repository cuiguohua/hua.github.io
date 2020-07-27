

wget -N --no-check-certificate https://raw.githubusercontent.com/ToyoDAdoubi/doubi/master/ssr.sh && chmod +x ssr.sh
bash ssr.sh

# bash <(curl -s -L https://git.io/v2ray.sh)


echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf


sysctl -p

sysctl net.ipv4.tcp_available_congestion_control

lsmod | grep bbr