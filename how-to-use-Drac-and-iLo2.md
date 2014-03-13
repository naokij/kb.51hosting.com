<!-- --- tag: faq Drac4 iLo2 独立服务器 -->
#如何使用Drac4与iLo2

##1. 配置个人电脑打开KVM
如果您要打开的是惠普的KVM，那么对于JRE的版本和浏览器是没有要求的，比如JRE6或JRE7，IE、Chrome或者Firefox都可以，但如果您要打开的是Dell的KVM，就必须是在IE6和JRE6的环境下，最好是启用了IE的ActiveX控件的情况下，才能顺利打开。针对Dell KVM的这种要求，我们建议您利用VMware workstation来创建一台Windows XP或者Windows Server 2003的虚拟机来打开它。
##2. 获取登录信息
在配置好了KVM的运行环境之后，就可以登录到客户中心提交申请使用KVM的工单了，在工单回复里，会提供KVM的登录ip、账号及密码。
##3. 登录KVM
###Dell KVM的设置：
在IE地址栏输入您获得的登录KVM的ip，这时会弹出一个 安全警报 的对话框，点 是 即可。之后输入账号与密码，点 确定 即可登录。可以看到如下界面：

  ![](http://i1.51hosting.com/2014-03-13_15_06_drac4_01.png)
  
之后点左上角的 控制台，在接下来的图中点 打开控制台：

  ![](http://i1.51hosting.com/2014-03-13_15_07_drac_02.png)
  
稍等一两分钟，即可看到弹出一个控制台窗口，如下图：

  ![](http://i1.51hosting.com/2014-03-13_15_08_drac_03.png)
  
###惠普KVM的设置：
在浏览器的地址栏输入登录KVM的ip地址，之后会弹出关于浏览器版本的提示框，确定即可。接着就会出现如下图所示的登录页面：

  ![](http://i1.51hosting.com/2014-03-13_15_12_iLo2_04.png)
  
输入 账号与密码 点击 Log In 即可看到以下界面：

  ![](http://i1.51hosting.com/2014-03-13_15_14_iLo2_05.png)
  
在上图中，我们只需要关注Remote Console与Power Management两处即可，其他选项，无须关注。点击 Remote Console标签页，可以看到下图：

  ![](http://i1.51hosting.com/2014-03-13_15_16_iLo2_06.png)
  
在上图中，我们只需要点 Remote Console，即可打开控制台窗口，其他的选项也是不需要关注的。这样我们就能像实际接到机器一样的操作了。
在Power Management标签页，是关于电源管理的选项，如下图：

  ![](http://i1.51hosting.com/2014-03-13_15_17_iLo_07.png)
  
图中的 Server is currently is STANDBY(OFF)表示该主机目前处于关机状态，此时我们点击左边的 Momentary Press 或 Press and Hold 按钮，即可开机。开机以后，Power Management标签页将如下图显示：

  ![](http://i1.51hosting.com/2014-03-13_15_18_iLo2_08.png)
  
图中的5个按钮都是跟主机的开关重启有关的，当然您也可以在系统里关机或重启。
  
