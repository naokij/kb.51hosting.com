<!-- --- tag:  云主机 vps scurecrt -->
<!-- --- title: 如何用Zmodem配合SecureCRT上传下载文件（centos 5.9 64）? -->
#如何用Zmodem配合SecureCRT上传下载文件（centos 5.9 64）?

Zmodem是SecureCRT支持比较好的一种古老的上传下载协议。<br>
不过这个工具需要下载安装套件的名字叫llrzsz

操作步骤如下：<br>
在服务器上安装<br>
    
    [root@www ~]# yum install lrzsz

安装完成后就可以在客户端使用SecureCRT的zmodem上传和下载功能了。


**使用方法**
上传文件时，只需先cd至SSH的目标目录，然后使用鼠标将欲上传的文件拖放到SecureCRT窗口中，选择“发送Zmodem”即可。如下图：

![](http://kb.51hosting.com/_media/kb/z3.png)


**下载文件时，需要在SSH中执行**：

    [root@www ~]# sz filename
    
即可将文件下载至downloads目录。downloads目录的位置可以在SecureCRT的会话选项中设置，如下图：

![](http://kb.51hosting.com/_media/kb/z4.png)