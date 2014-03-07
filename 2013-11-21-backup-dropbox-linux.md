<!-- --- tag: 备份 backup dropbox Linux centos ubuntu -->
<!-- --- title: 利用Dropbox备份网站文件(Linux) -->
#利用Dropbox备份网站文件(Linux)

Dropbox提供了2G的免费网络空间，我们可以利用它来实时备份我们Linux云主机或者独立主机上的文件。首先我们要在 www.dropbox.com 上注册一个账号，并下载它的客户端，安装在我们的系统上。这里我以CentOS6.3 32位系统的云主机为例来配置Dropbox同步我们系统上的数据。

##安装Dropbox客户端：
首先确认一下我们的系统环境：

    [root@localhost ~]# uname -a 
    Linux localhost.localdomain.com 2.6.32-279.el6.i686 #1 SMP Fri Jun 22 10:59:55 UTC 2012 i686 i686 i386 GNU/Linux 
    [root@localhost ~]# more /etc/issue  
    CentOS release 6.3 (Final)  
    Kernel \r on an \m   

之后利用root账号通过ssh登录到CentOS6.3，在/root目录下下载dropbox-lnx.x86-2.4.7.tar.gz：
 
    [root@localhost ~]#wget http://www.dropbox.com/download?plat=lnx.x86 
    
之后解压： 

    [root@localhost ~]#tar zxvf dropbox-lnx.x86-2.4.7.tar.gz 
解压后是一个隐藏目录 .dropbox-dist，如下图： 

![](http://kb.51hosting.com/kb/linux01.png) 

之后我们执行命令 ./.dropbox-dist/dropboxd，如下图： 

![](http://kb.51hosting.com/kb/linux02.png) 

此时我们需要将显示的网址输入到我们的客户端浏览器中，这里我就把该网址输入我使用的Win7里的chrome里，并回车，出现以下图示： 

![](http://kb.51hosting.com/kb/linux03.png) 

在 **登录** 处输入我们之前注册的账号及密码，点 **登录** ，出现下图提示： 

![](http://kb.51hosting.com/kb/linux04.png) 

此时我们再次输入上一步输入的密码，点 **提交** 之后，即可在网页顶部看到**你的电脑已成功与你的帐户关联**的提示，如下图： 

![](http://kb.51hosting.com/kb/linux05.png)

这时我们在登录到CentOS6.3的SecureCRT里也能看到屏幕停止了那条提示我们关联主机的输出，并出现 Client successfully linked,  welcome zhang san! 的提示，其中 zhang san 是我在注册时填写的用户名，如下图： 

![](http://kb.51hosting.com/kb/linux06.png) 

这就表示我们已经成功安装Dropbox客户端，并将我们的Dropbox账号与我们这台CentOS6.3系统的云主机进行了关联。

##同步数据

此时，我们在 /root 目录下会看到多了一个文件夹Dropbox，只要有新文件或文件夹在该文件夹里产生，就会被实时同步到dropbox.com。如果觉得实时将系统文件备份到Dropbox会影响机器性能，我们可以通过定时任务利用tar来执行备份，在机器负载较轻的时候进行数据同步。

ps:Dropbox的启动脚本是/root/.dropbox-dis/dropboxd，我们可以将其添加到/etc/rc.d/rc.local启动文件中使之随机启动，如下：
echo /root/.dropbox-dist/dropboxd >> /etc/rc.d/rc.local