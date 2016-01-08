<!-- --- tag: faq ip 客户中心 云主机-->
<!-- --- title: 如何给云主机增加IP地址或者取消已增加的IP地址 -->
#如何给云主机增加IP地址或者取消已增加的IP地址

通常情况每个云主机仅仅分配一个ip地址，但是如果你如果希望同一个云主机上的两个网站分别用不同的ip地址，你就需要更多IP地址。由于IPv4资源紧张，每个云主机最多能再申请一个ip地址，每个ip地址增加月租15元。您可以通过如下操作增加IP地址或者取消已经增加了的IP地址。

##客户中心操作

*  登陆[客户中心](http://portal.51hosting.com/clientarea.php)


*  选择“产品服务 - 我的产品服务”
![我的产品服务](http://ww4.sinaimg.cn/large/a74ecc4cjw1dywyuuqo07j.jpg)

*  选择要增加IP的云主机 - 查看详情

![查看详情](http://ww4.sinaimg.cn/large/a74eed94jw1dywyyy63l0j.jpg)


*  选择 管理操作 - 升级/降级选项

![升级降级选项](http://ww4.sinaimg.cn/large/a74e55b4jw1dywz1lk6i5j.jpg)


*  IP栏 下拉框选择 "增加一个IP地址 ￥7RMB/月",或者"不增加IP地址" 然后点继续

![添加ip](http://voga.emagineconcept.com/caicai/knowledgebase/addIP0.jpg)

*  继续完成订单，用支付宝支付账单


*  如果您使用的是Windows云主机，请提交工单，让我们的人员协助您将IP地址分配到您的虚拟机底下。

*  您还需要在云主机的系统内手动添加IP地址

## Windows 系统添加IP
由于设置可能导致Windows暂时断网，所以推荐利用客户中心的vnc功能登陆到Windows系统。

系统自动开设为自动获取IP，首先需要在控制面板-网络连接-本地连接属性-TCP/IP手动添加主IP。 设置后在控制面板点击reboot重启VPS。

![](http://voga.emagineconcept.com/caicai/knowledgebase/TCPIP.jpg)


然后在选项-高级 中添加一个新增IP 确认即可。

![](http://voga.emagineconcept.com/caicai/knowledgebase/addip.jpg)

##CentOS 系统添加IP地址
首先利用ssh登陆到您的服务器。

下面为命令行操作

	cd /etc/sysconfig/network-scripts/
	cp ifcfg-eth0 ifcfg-eth0:0
	nano ifcfg-eth0:0

*  修改eth0为eth0:0
*  修改IPADDRESS=后面的ip地址
*  ctrl+x然后输入y回车保存配置文件
*  利用客户中心里的Reboot功能重启云主机，重启好以后，ip地址会生效。