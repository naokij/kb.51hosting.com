<!-- --- tag: LNMP centos上手 linux 云主机 -->
<!-- --- title: NLMP平台下重置Mysql密码 -->
#NLMP平台下重置Mysql密码

有的时候装好lnmp后，会忘记mysql密码，这时候就要通过修改mysql的配置文件，来跨过数据库的密码验证来实现mysql密码的重置，具体步骤如下

##1.先确认LNMP的工作状态：

    /root/lnmp status

如果lnmp正在运行，则先将其关闭

##2.关闭LNMP平台

    /root/lnmp stop
##3.修改mysql配置文件

    vi /etc/my.cnf
在[mysqld]的段中加上一句：skip-grant-tables

##4.启动LNMP平台

    /root/lnmp start
##5.登录并修改Root的密码

    /usr/bin/mysql
    use mysql ;
    update user set Password = password ( 'new-password' ) where user = 'root' ;
    exit

##6.将MySQL的登录设置修改回来

    /etc/my.cnf
将先前在[mysqld]的段中加上的那句删除：skip-grant-tables
##7.重启LNMP平台

    /root/lnmp restart
完成