<!-- --- tag: faq esxi 独立服务器 -->

#ESXi服务器上系统远程不了的时候怎么办?
###无法远程登录

* 1.当您的服务器无法远程登录时，请不要慌张。首先您要确定是不是网络问题，如果系统的ip不通的话，您可以尝试ping ESXi服务器ip地址，如果ESXi服务器ip可以通信，那你的ESXi服务器没有问题，您需要登录到ESXi服务器进行管理您的系统。您可以在浏览器中输入ESXi的IP地址来下载ESXi的客户端。    

* 2.当您通过VI clent成功登入到您的ESXi服务器，然后在左侧机器列表处单击需要管理的机器，然后在右侧点击控制台，双击进入控制台界面，输入您系统的用户名密码进行本地管理。

    具体步骤：

    在我们将服务器登录信息（包括ESXi服务器ip地址，登录用户名及密码）提交给您以后，您需要下载VI client，来管理您的ESXi服务器。

    * 下载ESXi客户端（如果您已经下载并安装Vi客户端，即可省略此步）。 

###下载VI client

    打开浏览器，输入您的ESXi服务器地址，如：http://127.0.0.1,敲回车，即将进入VI client的下载界面，说明，由于ESxi安全性设置，打开页面之前，会有证书提示。

    * 如果您的是IE浏览器，将会出现以下界面：
![][1]

    * 以上是安全警报，直接点击确定即可

![][2]

    
* 以上是证书的安全警报，此处点击“是”，即可。点击以后将转接到下载页面。

    
* 如果您的是firefox浏览器，将出现以下界面：

![][3]

* 此处连接警告，您应该点击下面的“我以充分了解可能得风险”。

![][4]

* 然后点击出现的 “添加例外”

![][5]

* 此处为自动获取证书，您可以点击“获取证书”来获得证书，然后点击下方的 “确认安全例外”即可自动转接到下载页面。

* 点击左侧 download vsphere client进行客户端的下载（当然如果您已经安装客户端就无需下载），需要安装.net freamwork3.0以上版本。如图所示：

![][6]

###登录ESXi

   * 2.安装完成后，桌面上会出现一个VMware vSphere Client快捷方式，双击运行即可，默认用户名是root，密码在我们提交给您的信息中，输入点击登录即可。

![][7]

登录过程中会出现证书问题，如图所示：

![][8]


   您可以选择忽略，也可以选择勾选下方的安装此证书并不显示任何安全警告都可以。

###ESXi界面管理

![][9]


   主页即当前页面。

   清单就是一些虚拟机系统的列表，角色就是账号信息的管理。

   在左边框里，为您ESXi服务器上存在的虚拟机。

   点击您要管理的系统右键：

![][10]


###常用选项

   电源选项，您可以对系统进行重启。

   打开控制台，您可以对系统进行本地管理。

   编辑设置，您可以对系统硬件进行添加或删除。并且可以对系统进行硬件定制。

   下图即为控制台界面：

![][11]


   在这里，您可以像本地管理系统一样管理ESXi服务器上面的系统。 

[1]:http://voga.emagineconcept.com/knowledgebase/1.jpg
[2]:http://voga.emagineconcept.com/knowledgebase/2.jpg
[3]:http://voga.emagineconcept.com/knowledgebase/3.jpg
[4]:http://voga.emagineconcept.com/knowledgebase/4.jpg
[5]:http://voga.emagineconcept.com/knowledgebase/5.jpg
[6]:http://voga.emagineconcept.com/knowledgebase/6.jpg
[7]:http://voga.emagineconcept.com/knowledgebase/7.jpg
[8]:http://voga.emagineconcept.com/knowledgebase/8.jpg
[9]:http://voga.emagineconcept.com/knowledgebase/9.jpg
[10]:http://voga.emagineconcept.com/knowledgebase/10.jpg
[11]:http://voga.emagineconcept.com/knowledgebase/11.jpg