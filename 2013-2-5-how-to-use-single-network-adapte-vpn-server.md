---
{{tag>独立服务器 云主机 VPN}}
---
#在Windows Server 2003下利用单网卡做VPN服务器

###概述

有些购买或租用了装有Windows系统云主机或独立服务器的朋友，想在自己的系统上开启一个简单的vpn服务，以方便自己翻墙，但经常因设置不当，开启了防火墙，把自己挡在了防火墙之外，云主机的用户可以通过Control Panel进系统解决这个问题，而对于独立服务器，如果没有ipmi控制权的话，就只能求助于机房管理人员了。而网上很多使用Windows Server 2003做VPN服务器的技术文章都是在双网卡的环境下设置的，不适用于云主机或者租用的独立服务器。我们这篇文章就来介绍一下如何利用Windows Server 2003在单网卡上做VPN服务器。

### 路由和远程服务设置

在Windows Server 2003下的VPN服务器，可以利用系统自带的路由和远程访问服务来做。新装的Windows Server 2003 路由和远程访问服务是没有开启的。我们从管理工具里打开它，看下图：

![](http://ww3.sinaimg.cn/large/a74ecc4cjw1e1icyah4cbj.jpg)

之后我们选择 配置并启用路由和远程访问(C)，直接单击下一步即可看到下图：

![](http://ww1.sinaimg.cn/large/a74eed94jw1e1icyh90lbj.jpg)

在上图中，我们选择最后一项 自定义配置(C)。继续单击下一步，将看到下图：

![](http://ww3.sinaimg.cn/large/a74ecc4cjw1e1icyt3hnxj.jpg)

在上图中，选择 VPN访问 与 NAT和基本防火墙 这两项，之后继续单击下一步，接着点完成。在弹出的对话框上点击是即可。如下图：

![](http://ww1.sinaimg.cn/large/a74eed94jw1e1icz60st2j.jpg)

###配置VPN客户端ip地址

我的这台服务器名字叫 NANJING，所以，这里我们就在 NANJING（本地）上点右键，选 属性。

![](http://ww1.sinaimg.cn/large/a74ecc4cjw1e1iczmmt95j.jpg)

在弹出的对话框里我们选择 IP 标签页，如下图：

![](http://ww3.sinaimg.cn/large/a74eed94jw1e1iczz5axgj.jpg)

在上图中我们选择 静态地址池(S)，之后点击 添加，如下图，在这里我们就可以给VPN客户端设置ip地址了。我这里设置的是10.10.10.0网段。ip数量视您的客户端数量而定。

![](http://ww1.sinaimg.cn/large/a74e55b4jw1e1id0u7x4uj.jpg)

之后单击两次确定，即完成了VPN客户端ip地址的设定。

###设置路由

如下图，在 NAT/基本防火墙 上单击右键，选择 新增接口。

![](http://ww1.sinaimg.cn/large/a74ecc4cjw1e1id192c5nj.jpg)

之后在弹出的对话框里选择 本地连接 ，如下图：

![](http://ww1.sinaimg.cn/large/a74e55b4jw1e1id2e9rmyj.jpg)

接着单击确定。在下图中，我们做如下选择，之后单击确定就可以了。

![](http://ww1.sinaimg.cn/large/a74ecc4cjw1e1id2q4b4yj.jpg)

这里要提醒各位，一定不要勾选 在此接口上启动基本防火墙(N) ，这样会导致您无法通过远程桌面登录系统。至此，我们就基本上完成VPN服务器的配置。接下来我们创建VPN账号。

###创建VPN账号

这里我创建了一个叫bob的账号，之后在其 属性 对话框的 拨入标签页，选择 允许访问(W)，之后确定，如下图：

![](http://ww2.sinaimg.cn/large/a74eed94jw1e1id32sbubj.jpg)

###在Windows 7下创建VPN连接

在Windows XP或者Windows 7下创建VPN连接，相对简单，这里以Windows 7为例，简单介绍一下。

做如下定位： 控制面板-->网络和Internet-->网络和共享中心，如下图，选择 设置新的连接或网络：

![](http://ww1.sinaimg.cn/large/a74e55b4jw1e1id45kr6cj.jpg)

之后将看到下图，选择 连接到工作区域：

![](http://ww1.sinaimg.cn/large/a74eed94jw1e1id4jy2tgj.jpg)

在接下来的对话框里，选择第一项，如下图：

![](http://ww1.sinaimg.cn/large/a74e55b4jw1e1id4r6bkij.jpg)

在接下来的对话框里，输入VPN服务器的ip地址以及此连接的名字，名字可以随便取，只要自己明白即可，如下图：

![](http://ww2.sinaimg.cn/large/a74ecc4cjw1e1id52ajbvj.jpg)

在接下来弹出的对话框里，输入VPN账号及密码，之后点连接即可。如下图：

![](http://ww3.sinaimg.cn/large/a74e55b4jw1e1id5cjko1j.jpg)

这样，我们就完成了在Windows Server 2003下单网卡VPN服务器的设置。
