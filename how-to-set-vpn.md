<!-- --- tag: 云主机 独立服务器 CentOS pptp vpn -->
<!-- --- title:  在CentOS5.x上利用pptpd配置vpn服务   -->
# 在CentOS5.x上利用pptpd配置vpn服务  

购买了Linux系统云主机的客户可以通过在该系统上利用pptpd来架设vpn服务，这样能方便我们在访问一些被墙的国外网站时翻墙，下面我们来看一下配置过程：

##1.准备系统及安装pptpd的环境： 

系统为CentOS5.8云主机，ip 199.101.117.103，在安装pptpd前，需要安装  
perl、ppp，都可以通过yum来安装：  

    yum -y install ppp perl

pptpd的rpm包需要另外下载，可以到rpm.pbone.net找来安装：  

    rpm -ivh pptpd-1.3.4-1.rhel5.1.i386.rpm

##2.配置vpn服务： 

编辑/etc/pptpd.conf文件，将文件最后两行改成如下内容：  

    localip 192.168.1.233
    remoteip 192.168.1.234-254

这里主要是配置分配给vpn客户端及服务器的ip，可以设置成私网ip。 

再注释掉以下内容： 

    logwtmp

之后保存退出。  

编辑 /etc/ppp/chap-secrets，在文件最后添加vpn客户的账号密码如下：  

    test pptpd test123 * 

第一个和第三个字段代表vpn客户端的账号与密码，第二四字段代表服务和客户的名称或ip，各字段以空格或tab键隔开。  

之后我们启动pptpd服务，并设置开机自动启动：  

    /etc/init.d/pptpd start 
    chkconfig pptpd on

此时我们已经能在客户端创建vpn连接，拨上该vpn了，但不能访问其它网络。  

##3.设置vpn客户端对外部网络的访问： 

这里我们是以在 /etc/rc.d/rc.local 里添加iptables规则的方法来实现该功能:  

首先我们要开启CentOS的路由转发功能并打开1723端口:  

    echo 1 > /proc/sys/net/ipv4/ip_forward
    iptables -I INPUT -p tcp –dport 1723 -j ACCEPT
     
之后我们做ip伪装设置：  

    iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -o eth0 -j MASQUERADE 

之后将以上设置写入/etc/rc.d/rc.local，让其重启也能生效： 

    echo 1 > /proc/sys/net/ipv4/ip_forward
    /sbin/iptables -I INPUT -p tcp –dport 1723 -j ACCEPT
    /sbin/iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -o eth0 -j MASQUERADE

此时我们再拨上vpn，就能访问其它网络了。 