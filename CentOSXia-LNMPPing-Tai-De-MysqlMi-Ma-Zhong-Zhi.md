有的时候装好lnmp后，会忘记mysql密码，这时候就要通过修改mysql的配置文件，来跨过数据库的密码验证来实现mysql密码的重置，具体步骤如下：
1、先确认lnmp的工作状态：# /root/lnmp status   如果lnmp正在running，则先将其关闭
                       # /root/lnmp stop     关闭lnmp

2、进入mysql配置文件：# vim /etc/my.cnf
    在[mysqld]的段中加上一句：skip-grant-tables

3、启动lnmp：# /root/lnmp start

4、登录并修改MySQL的root密码：# /usr/bin/mysql
                              mysql> use mysql ; 
                              mysql> update user set Password = password ( 'new-password' ) where user = 'root' ;
                              mysql> exit

5、将MySQL的登录设置修改回来：# vim /etc/my.cnf
将先前在[mysqld]的段中加上的那句删除： skip-grant-tables

6、重启lnmp：# /root/lnmp restart