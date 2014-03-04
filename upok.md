<!-- --- tag: linux 云主机 ftp 进阶 -->
<!-- --- title: 如何限制vsftpd中的匿名用户只允许上传不允许下载？ -->
#如何限制vsftpd中的匿名用户只允许上传不允许下载？

第一步 新建uploads文件夹和改变下拥有者


![](http://kb.51hosting.com/kb/no1.png)


第二步： （在vsftpd服务我们已经安装好的情况下，不然没这个配置文件）编辑vsftpd.conf，把图中的选择去掉前面#
![](http://kb.51hosting.com/kb/no2.png)
![](http://kb.51hosting.com/kb/no3.png)

第三步： 重启vsftpd 生效，输入service vsftpd restart


现在uploads文件夹只能上传，却不能下载！