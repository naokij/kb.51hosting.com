<!-- --- title: 如何搭建xinetd方式的vsftpd？-->
<!-- --- tag: 云主机 独立服务器 CentOS vsftpd xinetd 进阶 ftp -->
====== 如何搭建xinetd方式的vsftpd？ ======
 



===== 使用场景： =====

vsftp有两种模式启动

第一种是默认的，也就是进程常驻在系统中 \\ 

第二种是xined方式。第一种ftp服务是经常有客户端来连接时候用的。

第二种是可以节约系统资源，只有客户访问时才激活，用在比如自己公司和内部环境使用。
  



 ==== 如何搭建super daemon的vsftpd如下： ====

 
一.软件安装：
         [root@localhost ~]#yum -y install vsftpd xinetd ftp 
二.拷贝配置文件
         [root@localhost ~]#cp /usr/share/doc/vsftpd-2.2.2/vsftpd.xinetd  /etc/xinetd.d/vsftpd  
三.修改配置文件                 
         [root@localhost ~]#cat /etc/vsftpd/vsftpd.conf |grep listen= (默认yes改为no)
         listen=NO 
         [root@localhost ~]# cat /etc/xinetd.d/vsftpd |grep disable   （默认yes改为no）
disable	 = no


四.启动服务   


         [root@localhost ~]# /etc/init.d/xinetd  restart 
         
五.测试 

       [root@localhost ~]# ftp 127.0.0.1  
       
Connected to 127.0.0.1 (127.0.0.1).  \\ 

220 (vsFTPd 2.2.2) \\ 
Name (127.0.0.1:root): ftp\\ 
331 Please specify the password.    \\ 
Password:\\ 
230 Login successful.\\ 
Remote system type is UNIX.\\ 
Using binary mode to transfer files.\\ 
ftp> \\ 


扩展操作：       限制客户访问vsftpd的访问时间段（限制客户8:30到11:30可以登录）\\ 
方法1：修改配置文件  添加一行access_times   =8:30-11:30   \\ 
[root@localhost ~]# vim /etc/xinetd.d/vsftpd\\ 
service ftp\\ 
{
        socket_type             = stream 
        wait                    = no
        user                    = root
        server                  = /usr/sbin/vsftpd
        server_args             = /etc/vsftpd/vsftpd.conf
        nice                    = 10
        disable                 = no
        access_times            =8:30-11:30   
        flags                   = IPv4
}
  [root@localhost ~]# /etc/init.d/xinetd  restart    即可在指定时间段登陆


方法2：

iptables -A INPUT -p  tcp -s 192.168.66.0/255.255.255.0 --dport 21 -m time --timestart 8:30 --timestop 11:30 -j ACCEPT


iptables -A OUTPUT -p tcp -d 192.168.66.0/255.255.255.0 --sport 21 -m time --timestart 8:30 --timestop 11:30 -j ACCEPT 