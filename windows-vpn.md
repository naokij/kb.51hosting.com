<!-- --- tag: faq windows vpn -->
<!-- --- title: 如何在Windows 下设置 PPTP VPN 客户端 -->
# 如何在Windows 下设置 PPTP VPN 客户端

### Windows XP下设置

* 1.在网络连接 点击 创建一个新的连接

![](http://i1.51hosting.com/2014-09-01_10_25_vpn1.jpg)

* 2.连接到我的工作场所的网络(使用拨号或者VPN)

![](http://i1.51hosting.com/2014-09-01_10_27_vpn2.jpg)

* 3. 虚拟专用网络连接

![](http://i1.51hosting.com/2014-09-01_10_28_vpn3.jpg)

* 4. 输入名称

![](http://i1.51hosting.com/2014-09-01_10_29_vpn4.jpg)

* 5.输入VPN的IP地址

![](http://i1.51hosting.com/2014-09-01_10_30_vpn5.jpg)

* 6.完成

![](http://i1.51hosting.com/2014-09-01_10_31_vpn6.jpg)

* 7.输入用户名和密码

![](http://i1.51hosting.com/2014-09-01_10_32_vpn7.jpg)

* 8.连接完成

![](http://i1.51hosting.com/2014-09-01_10_33_vpn8.jpg)

### Windows 7 下设置

* 1.点击 控制面板 - 查看网络状态和任务，如下图:

![](http://i1.51hosting.com/2014-09-01_11_12_win7-1.png)

* 2.点击上图中红色框内标识的“设置新的连接或网络”，然后下一步下一步，看准有VPN字样的就对了：

![](http://i1.51hosting.com/2014-09-01_11_14_win7-2.png)

* 3.输入连接地址，用户名，密码，可以选择保存密码 (最后点击连接，然后点击跳过)

![](http://i1.51hosting.com/2014-09-01_11_14_win7-3.png)

* 4.

![](http://i1.51hosting.com/2014-09-01_11_16_win7-4.png)

![](http://i1.51hosting.com/2014-09-01_11_16_win7-5.png)

![](http://i1.51hosting.com/2014-09-01_11_16_win7-6.png)

### 下面是一些常见错误：

* 1. VPN 741错误

解决方法：将安全选项-要求数据加密 - 取消勾选。

![](http://i1.51hosting.com/2014-09-01_10_36_VPN9.jpg)

* 2.可以上QQ，但是不能上网（包括不能上youtube twitter）

网上有一种方法是，在VPN的“高级TCP/IP设置”中取消“在远程网络上使用默认网关”选项来达到访问外网的目的，但是这种方式是错误的。正确的方法如下:

![](http://i1.51hosting.com/2014-09-01_10_37_vpn10.jpg)

将DNS设置为google的DNS解析就可以访问了，原因是因为国内的DNS运营商对youtube twitter做了域名和DNS劫持。





