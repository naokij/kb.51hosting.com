

---
{{tag> 云主机 vps linux}}

---
#如何通过DenyHosts阻止SSH暴力攻击


Denyhosts是一个Linux系统下阻止暴力破解SSH密码的软件，它的原理与DDoS Deflate类似，可以<br> 
 自动拒绝过多次数尝试SSH登录的IP地址，防止互联网上某些机器常年破解密码的行为，也可以防<br> 
止黑客对SSH密码进行穷举。<br> 
众所周知，暴露在互联网上的计算机是非常危险的。并不要因为网站小，关注的人少或不惹眼就<br> 
掉以轻心：互联网中的大多数攻击都是没有目的性的，黑客们通过大范围IP端口扫描探测到可能存<br> 
在漏洞的主机，然后通过自动扫描工具进行穷举破解。笔者的某台服务器在修改SSH 22号端口之前，<br> 
平均每天接受近百个来自不同IP的连接尝试。而DenyHosts正是这样一款工具。下文将对该工具的<br> 
安装与使用方法进行介绍。<br> 
 
**DenyHosts阻止攻击原理** 

<br> 
DenyHosts会自动分析 /var/log/secure 等安全日志文件，当发现异常的连接请求后，会自动将其<br> 
IP加入到 /etc/hosts.deny 文件中，从而达到阻止此IP继续暴力破解的可能。同时，Denyhosts还<br> 
能自动在一定时间后对已经屏蔽的IP地址进行解封，非常智能。<br> 
 <br> 
**官方网站**<br> 
Denyhosts的官方网站为：http://denyhosts.sourceforge.net/ （杜绝Putty后门事件，谨记安全<br> 
软件官网）<br> 
 
**安装方法**<br> 
 
1、下载DenyHosts源码并解压（目前最新版为2.6）<br> 
1<br> 
[root@www ~]# wget http://sourceforge.net/projects/denyhosts/files/denyhosts/2.6/Deny<br> 
Hosts-2.6.tar.gz<br> 
2<br> 
[root@www ~]# tar zxvf DenyHosts-2.6.tar.gz<br> 
3<br> 
[root@www ~]# cd DenyHosts-2.6<br> 
2、**安装部署**<br> 
1<br> 
[root@www DenyHosts-2.6]# yum install python -y<br> 
2<br> 
[root@www DenyHosts-2.6]# python setup.py install<br> 
3、**准备好默认的配置文件**<br> 
1<br> 
[root@www DenyHosts-2.6]# cd /usr/share/denyhosts/<br> 
2<br> 
[root@www denyhosts]# cp denyhosts.cfg-dist denyhosts.cfg<br> 
3<br> 
[root@www denyhosts]# cp daemon-control-dist daemon-control<br> 
4、编辑配置文件denyhosts.cfg<br> 
1<br> 
[root@www denyhosts]# vi denyhosts.cfg<br> 
该配置文件结构比较简单，简要说明主要参数如下：<br> 
PURGE_DENY：当一个IP被阻止以后，过多长时间被自动解禁。可选如3m（三分钟）、5h（5小时）、<br> 
2d（两天）、8w（8周）、1y（一年）；<br> 
PURGE_THRESHOLD：定义了某一IP最多被解封多少次。即某一IP由于暴力破解SSH密码被阻止/解封<br> 
达到了PURGE_THRESHOLD次，则会被永久禁止；<br> 
BLOCK_SERVICE：需要阻止的服务名；<br> 
DENY_THRESHOLD_INVALID：某一无效用户名（不存在的用户）尝试多少次登录后被阻止；<br> 
DENY_THRESHOLD_VALID：某一有效用户名尝试多少次登陆后被阻止（比如账号正确但密码错误），<br> 
root除外；<br> 
DENY_THRESHOLD_ROOT：root用户尝试登录多少次后被阻止；<br> 
HOSTNAME_LOOKUP：是否尝试解析源IP的域名；<br> 
大家可以根据上面的解释，浏览一遍此配置文件，然后根据自己的需要稍微修改即可。<br> 
5、**启动Denyhosts**<br> 
1<br> 
[root@www denyhosts]# ./daemon-control start<br> 
如果需要让DenyHosts每次重启后自动启动，还需要：<br> 
6、**设置自动启动**<br> 
设置自动启动可以通过两种方法进行。<br> 
第一种是将DenyHosts作为类似apache、mysql一样的服务，这种方法可以通过 /etc/init.d/denyhosts <br> 
命令来控制其状态。方法如下：<br> 
1<br> 
[root@www denyhosts]# cd /etc/init.d<br> 
2<br> 
[root@www init.d]# ln -s /usr/share/denyhosts/daemon-control denyhosts<br> 
3<br> 
[root@www init.d]# chkconfig --add denyhosts<br> 
4<br> 
[root@www init.d]# chkconfig -level 2345 denyhosts on<br> 
**第二种是将Denyhosts直接加入rc.local中自动启动（类似于Windows中的“启动文件夹”）**：<br> 
1<br> 
[root@www denyhosts]# echo '/usr/share/denyhosts/daemon-control start' >> /etc/rc.local<br> 
如果想查看已经被阻止的IP，打开/etc/hosts.deny 文件即可。<br> 