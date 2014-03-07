<!-- --- tag: linux vsftpd centos chroot ftp  -->
<!-- --- title: 如何把vsftpd的系统账户登录后chroot在自己家目录 -->
#如何把vsftpd的系统账户登录后chroot在自己家目录

**使用场景：由于默认搭建好vsftpd后，如果新建了系统账户，这些账户在客户端工具或者其他方式登录了以后，可以随便切换到系统的任意目录，相当不安全，所以有没有办法把这些账户登录后只能让它们在自己的特定目录里，无法切换到别的目录呢？
**
操作步骤：

第一步：yum -y install vsftpd  先安装ftp服务

第二步： 编辑配置文件

vi /etc/vsftpd/vsfpd.conf

第三步： 输入“/chroot_local” 后回车会定位到chroot_local_user=yes，把前面的#号去掉，



第四步骤：输入 services vsftpd restart 重启生效






第五步测试：新建test1 test2 test3用户,再分别给三个账号生成密码 比如：


useradd test1

useradd test2

useradd test3

passwd test1

passwd test2

passwd test3
 

最后ftp客户端工具比如用filezilla登录后，其实就是服务器上每个用户自己的家目录,无法切换到其他目录，从而提高安全
![](http://kb.51hosting.com/kb/ftpchroot.png)