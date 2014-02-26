<!-- --- tag: 云主机 VNC -->
#如何使用VNC客户端连接？

我们在使用windows系统的VPS时，可以通过2种方式进行管理：RDP远程桌面 和VNC。但当windows系统的RDP服务出问题无法RDP远程登陆时，我们就需要用到VNC功能。下面给大家介绍如何用VNC客户端连接VNC。

市面上有诸多VNC客户端供我们使用。 例如：tightVNC，realVNC等。 本教程我们采用tightVNC。

* 1.确认VPS的VNC服务器登录信息

用VNC客户端登陆一台VPS，首先需要知道这台VPS的VNC服务器IP，端口号和VNC密码。 我们可以在[控制面板](http://kb.51hosting.com/vps/2012/11/20/how-to-use-vps-controlpanel/)中寻找到该信息。

* 1-1 点击-VNC按钮

![](http://ww2.sinaimg.cn/large/a15e6eb9gw1e73r62t70xj20ec0a6q3j.jpg)

* 1-2 点击-查看连接设置 


![](http://ww2.sinaimg.cn/large/a15e6eb9gw1e73r7obck7j20ex0a7gly.jpg)


*其中有极少数xen07上的vps客户，vm编号为vm625以及以后的，vnc的端口号总比配置文件多一号。这导致这些vps的控制面板中的vnc功能无法使用。例如：控制面板中端口显示5972，实际vnc的端口号为6973。所以使用vnc客户端，端口号处要注意填写实际大一号。*


* 2.下载tightVNC客户端工具

登陆[tightVNC网站](http://www.tightvnc.com/download.php)下载客户端并打开tightVNC viewer

输入VNC IP地址和端口号 connect，格式为 ip:端口号

![](http://ww1.sinaimg.cn/large/a15e6eb9gw1e73pyov5ypj20e20ah3zv.jpg)


* 3.输入VNC密码

![](http://ww2.sinaimg.cn/large/a15e6eb9gw1e73ra3aj7aj209l05d74f.jpg)


* 4.等待数秒后成功登陆


![](http://ww2.sinaimg.cn/large/a15e6eb9gw1e73q81bzr9j20mi0is0u4.jpg)


* 5.点击 send Ctrl+Alt+Del

![](http://ww1.sinaimg.cn/large/a15e6eb9gw1e73qeulr2nj20m80ig3zk.jpg)










