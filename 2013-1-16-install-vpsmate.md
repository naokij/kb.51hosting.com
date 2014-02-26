<!-- --- tag: 独立服务器 云主机 VPSMate Linux -->

#如何在Linux下安装VPSMate控制面板
  
在通常情况下，用SSH管理Linux VPS或者服务器时，对于大多数新手来说是件十分头疼的事情。幸好有很多高手写了不少免费好用的主机控制面板。 
下面给诸位介绍一款安装及其简单，简约明了的图形化界面操作，超低资源占用，且功能强大的控制面板[VPSMate](http://www.vpsmate.org/)。
 
###安装需求

   操作系统：CentOS/Redhat 5.4 或 5.4 以上版本，32位或64位均可，推荐使用 CentOS 6.2 64位。
    内存大小：运行时占用约 20MB 左右的服务器内存。
    请使用现代浏览器访问面板（IE8+、Firefox 14+、Chrome 21+），推荐使用 Chrome。

###安装步骤

使用ssh连接到你的Linux服务器上。只需在命令行执行以下2步操作即可安装完毕。 
 
 # wget http://www.vpsmate.org/tools/install.py

 #python install.py

![](http://www.vpsmate.org/static/images/install/1.png)


安装完成后系统提示设置管理员用户名和密码，如果直接回车，则使用默认用户名 admin和密码 admin。设置完成，打开浏览器即可访问你的VPSMate面板。访问地址为http://ip:8888 或者 http://domain:8888。

![](http://www.vpsmate.org/static/images/install/2.png)



###登陆界面

![](http://ww1.sinaimg.cn/large/a74ecc4cjw1e0v88lxe1sj.jpg)


###更新

   在 VPSMate 面板中选择“设置”-“版本升级”进行版本更新。

![](http://bbs.vpsmate.org/attachment/Mon_1210/6_1_7e120ffec3b5fb5.png?17)

###卸载

VPSMate非常容易卸载，只需在命令行运行以下命令即可完成卸载，并且卸载后也不影响其他数据:
  
 # service vpsmate stop

 # rm -rf /usr/local/vpsmate
 
 # rm -f /etc/init.d/vpsmate


###忘记用户名或密码
在服务器上运行以下命令即可重置管理员用户名密码：

 # /usr/local/vpsmate/config.py username '用户名'
 
 # /usr/local/vpsmate/config.py password '密码'

**curl: (22) The requested URL returned error: 404解决办法**

修改 /usr/local/vpsmate/lib/vpsmate/yum.py

42~43行

'x86_64': ('http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-7.noarch.rpm', ),
'i386': ('http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-7.noarch.rpm', ),
'i686': ('http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-7.noarch.rpm', ),

为
'x86_64': ('http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm', ),
'i386':   ('http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm', ),
'i686':   ('http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm', ),

然后修改/usr/local/vpsmate/lib/vpsmate/yum.py 权限为0744  最后重启VPSMate  （务必重启，否则还提示错误。）
再安装就可以了。。

###更多操作

请查阅[VPSMate使用手册](http://www.vpsmate.org/manual)