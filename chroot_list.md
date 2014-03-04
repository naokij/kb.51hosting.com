<!-- --- tag:  云主机 linux ftp 进阶  -->

<!-- --- title: 如何设置vsftpd服务中的chroot白名单功能？ -->
#如何设置vsftpd服务中的chroot白名单功能？

通过[如何把vsftpd的系统账户登录后chroot在自己家目录](http://kb.51hosting.com/kb/how-to-chroot.md)这篇教程，我们了解到
可以把系统账号锁定在她们的家目录，那如何设置白名单，达到白名单里的账号不被锁，没写进白名单的账号都默认还是乖乖的锁定在
她们的家目录呢？

步骤一 先新建三个测试账号 test1 test2 和test3 请参考 
[如何把vsftpd的系统账户登录后chroot在自己家目录](http://kb.51hosting.com/kb/how-to-chroot.md)这篇教程

步骤二 vi /etc/vsftpd/vsftpd.conf，去掉chroot_list_enable=yes和chroot_list_file前面的#,按：wq 保存退出

![](http://kb.51hosting.com/kb/chroot_list.png)


步骤三 ：vi /etc/vsftpd/chroot_list 填入你想要白名单账户，这里比如是test3

![](http://kb.51hosting.com/kb/chroot__test3.png)

步骤四 输入service vsftpd restart重启下让配置生效

步骤五 验证 用filezilla客户端去连，test3可以切换目录

![](http://kb.51hosting.com/kb/test3ok.png)
