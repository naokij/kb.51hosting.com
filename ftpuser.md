<!-- --- tag:  linux 云主机 ftp 进阶  -->
<!-- --- title: 如何设置vsftpd系统账号的黑名单? -->
#如何设置vsftpd系统账号的黑名单?

默认系统账户是可以登录vsftpd的，配置文件里有个选项可以禁用系统账号，但是缺点是要禁用的话全部系统账号都禁用了，有时候只想禁用一部分系统账号该怎么办呢？


第一步：新建测试账号 useradd test10和useradd test11并给他们设置密码

![](http://kb.51hosting.com/kb/ftpuser1.png)

第二步 在没修改前，先测试下登录是成功的哦
![](http://kb.51hosting.com/kb/ftpuser2.png)

第三步：编辑/etc/vsftpd/ftpuser ,在里面添加test10，一个账号一行
![](http://kb.51hosting.com/kb/ftpuser3.png)

第四步 重启服务，并再次登录就无法登录了哟
![](http://kb.51hosting.com/kb/ftpuser4.png)