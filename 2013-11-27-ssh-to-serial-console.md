---
{{tag>云主机 console ssh}}
---

#如何利用SSH访问Linux云主机的Serial Console

当我们在无法正常使用SSH的时候，Serial Console功能可以很好的帮助我们登录到服务器进行管理。但由于最近java的更新导致我们linux云主机的Serial Console功能无法使用。下面给大家提供一种解决方法，通过SSH客户端连接到Serial Console界面。

###操作步骤

* 1.首先登录云主机的控制面板， 点击SSH命令行。

![](http://i1.51hosting.com/2013-11-27_15_14_console_ssh1.png)

* 2.点击查看连接设置

![](http://i1.51hosting.com/2013-11-27_15_15_console_ssh2.png)

* 3.获取SSH登录信息

![](http://i1.51hosting.com/2013-11-27_15_15_console_ssh3.png)

* 4.通过SSH客户端连接Serial Console界面

现在您就可以使用putty或者Xshell等SSH客户端工具去登录到Serial Console界面了。如果等待一段时间画面仍旧停留在waiting，请按鼠标或者键盘唤醒。

* 5.在Serial Console界面里输入系统登录

现在您已经登录到了Serial Console界面，显示让您输入您这台云主机的用户名和密码。正确输入后方可登录到系统里面。

![](http://i1.51hosting.com/2013-11-27_15_23_console_ssh4.png)