<!-- --- tag: plesk 父路径 虚拟主机 -->
<!-- --- title: 如何开启父路径并设置写入权限 -->
#如何开启父路径并设置写入权限
###如何开启父路径

首先您需要登录到plesk控制面板，然后按照如下步骤进行操作：

*  1.点击网站与域名

![](http://ww3.sinaimg.cn/large/a74ecc4cjw1dzavciyxybj.jpg)

*  2.在页面中间点击显示高级操作，选择虚拟目录

![](http://ww4.sinaimg.cn/large/a74eed94jw1dzavg3ktnmj.jpg)

*  3.点击您需要管理的域名最右边的管理按钮，然后点击目录属性

![](http://ww2.sinaimg.cn/large/a74e55b4jw1dzax7dhdlvj.jpg)

*  4.在应用程序设置栏目下勾选允许使用父路径，然后在页面最下方点击确定

![](http://ww4.sinaimg.cn/large/a74ecc4cjw1dzbvve29g6j.jpg)


###如何设置写入权限

同样，您首先需要登录到plesk控制面板，然后按照如下步骤进行操作：

*   1.点击网站与域名

![](http://ww3.sinaimg.cn/large/a74ecc4cjw1dzavciyxybj.jpg)

*   2.在页面中间点击显示高级操作，选择虚拟目录

![](http://ww4.sinaimg.cn/large/a74eed94jw1dzavg3ktnmj.jpg)

*   3.点击您需要管理的域名最右边的管理按钮，点击相应虚拟目录右边的黄色小锁

![](http://ww3.sinaimg.cn/large/a74eed94jw1dzbwu5mnd8j.jpg)

*   4.然后选择用户“plesk iis Anonymous Account"，在右边勾选相应的权限,点击确定       

![](http://ww1.sinaimg.cn/large/a74e55b4jw1dzbx2fo34uj.jpg)


###asp网站报错该如何解决解决

如果您的asp网站显示报错无法打开，那可能是因为您的虚拟主机控制面板从plesk9.5升级到plesk11时系统环境的改变而引起的，那么您需要按照如上六个步骤来设置，以确定您网站数据库目录有写入权限，设置完成之后重新打开您的网站，您会发现原先报错的asp网站已可以正常打开。