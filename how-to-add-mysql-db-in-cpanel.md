<!-- --- title: 如何在cPanel添加MySQL数据库 ->
<!-- --- tags: cpanel 数据库 -->
#如何在cPanel添加MySQL数据库

###登录cPanel主界面

 *1. 首先在浏览器的地址栏键入您的cPanel服务器所在的IP和端口，如：http://64.78.xxx.xx:20xx/，跳转到如下页面之后，输入您的用户名和密码，确定即可直接登入cPanel

![](http://ww2.sinaimg.cn/large/a74ecc4cjw1e13awyq77wj.jpg)
 
   也可以点击取消进入如下页面输入用户名和密码，登录cPanel.

![](http://ww2.sinaimg.cn/large/a74e55b4jw1e13b0p92isj.jpg)

*2. 在cPanel主界面，选择MySQL数据库，进入MySQL数据库管理面板(MySQL Account Maintenance)

![](http://ww3.sinaimg.cn/large/a74ecc4cjw1e13lbxzoxpj.jpg)

###进入MySQL数据库管理面板

在数据库管理面板中，从上到下分成四个部分：

Current Databases 

Current Users 

Access Hosts

phpMyAdmin

###添加新Database：

*3. 在Databases旁边输入框中输入数据库的名字如DBTest，点击Create Database.

![](http://ww2.sinaimg.cn/large/a74eed94jw1e13mfxvyszj.jpg)

假设cPanel用户名为abc,那么生成的数据库名字就是“abc_DBTest”.

###添加新用户名

*4. 在跳转之后的页面点击"go back”，可查看刚添加的数据库，然后输入您想设定的username和password

![](http://ww1.sinaimg.cn/large/a74e55b4jw1e13mqotxzdj.jpg)

如输入用户名amy，点击Add User,将会生成类似abc_amy的用户名

###将数据库与用户名建立关联

*5. 在跳转之后的页面点击"go back”，可查看刚添加的用户，在Databases栏目从User以及DataBase两个列表中选择对应的用户名和数据库名，在Privileges中勾选 ALL，点击“Add User to Database” ，在他们之间建立关联。

![](http://ww2.sinaimg.cn/large/a74ecc4cjw1e13nhzohisj.jpg)
![](http://ww3.sinaimg.cn/large/a74eed94jw1e13nnwn272j.jpg)

这样，就完成了添加数据库的全部过程。

如果您要安装论坛或者其它程序，那么按照上边的假设，您的数据库相关信息将会和下面类似：

数据库主机：localhost

数据库名： abc_DBTest

数据库用户名：abc_amy

数据库密码：123456