<!-- --- tag:  windows 云主机 进阶 ftp -->
<!-- --- title: 如何在window下自动登录linux的ftp服务器并下载文件？ -->
#如何在window下自动登录linux的ftp服务器并下载文件？

步骤一：首先确保在linux服务器上有登录的账号，这里演示比如是testniko这个账号，我先新建个并设置密码test

![](http://kb.51hosting.com/kb/ftpauto1.png)

步骤二： 在windows客户端环境下新建一个叫ftpauto.txt的文件（比如在d盘下新建这个文件），第一行填入你要连的对方ftp服务器地址，第二行是用户名，第三行是密码，第四行是要上传windows下你想上传的那个文件（完整路径名），第五行就写bye

![](http://kb.51hosting.com/kb/ftpauto22.png)

步骤三：和ftpauto.txt位置一样（d盘下）再新建一个ftpauto.bat文件，里面填入一个命令如下并保存
![](http://kb.51hosting.com/kb/ftpauto110.png)

步骤四：双击这个ftpauto.bat后，系统就会自动上传你指定的文件到ftp服务器账号的家目录下

步骤五：验证一下，去服务器上看下是否上传成功了
![](http://kb.51hosting.com/kb/ftpauto111.png)
