<!-- --- tag: faq esxi ntp 独立服务器 -->
#禁用ESXi服务器上ntp服务

安装了ESXi系统的主机，如果不禁用ntp服务，这台主机有可能会成为ntp server（esxi服务端漏洞之一），攻击网络上的其他机器。下面我们介绍一下如何关闭ntp服务，以避免这种情况的发生：

首先需要通过vSphere client登录esxi。

接着在打开的vSphere client左边框，选择这台esxi主机，之后在右边框选择 **配置** ,如下图：

<center>![](http://kb.51hosting.com/_media/kb/esxi01.png)</center>

接下来在中间那一栏 **软件** 下选择 **安全配置文件**，之后再在右上角选择 **属性**，如上图 3 4 。


之后在弹出的 **服务属性** 对话框中，我们找到并选择 **NTP守护进程**，之后再点击右下角的 **选项** 按钮，如下图：

<center>![](http://kb.51hosting.com/_media/kb/esxi02.png)</center>

最后在弹出的 **NTP守护进程(ntpd)选项** 中，我们选择右边的 **手动启动和停止** ，之后点 **停止** 按钮，再点 **确定** 即可，如下图：

<center>![](http://kb.51hosting.com/_media/kb/esxi03.png)</center>
