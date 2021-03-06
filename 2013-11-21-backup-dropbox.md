<!-- --- tag: 备份 backup dropbox windows -->
<!-- --- title: 利用Dropbox备份网站文件(Windows) -->
#利用Dropbox备份网站文件(Windows) 

<br />

##安装配置Dropbox客户端

Dropbox提供了2G的免费网络空间，我们可以利用它来备份我们云主机或者独立主机上的文件。首先我们要在dropbox.com上注册一个账号，并下载它的客户端，安装在我们的系统上。客户端的安装很简单，在安装完毕后有一个对话框，如下图，这里我们选择第二项 **我已经拥有Dropbox帐户：**

![](http://kb.51hosting.com/kb/bak01.png)

之后就在下图中填写您在Dropbox.上注册的账号及密码，其中电脑名称会自动获取。

![](http://kb.51hosting.com/kb/bak02.png)

在接下来的对话框中，由于我们没有付费，只能选择2G免费版，之后继续往下走。在 **选择安装类型** 对话框，建议选择 **高级**。之后在 **高级设置——Dropbox设置** 里，我做如下设置：

![](http://kb.51hosting.com/kb/bak05.png)

在接下来的 **设置你的手机** 选项，我们不做设置，直接下一步，之后继续点下一步，之后再点完成，在结束之后会有关于Dropbox的使用教程，我们在看过之后基本就能熟悉Dropbox的使用。

##利用Dropbox备份

此时，我们只要将自己需要备份的文件或文件夹，比如您网站的根目录放在这个Dropbox文件，即可实现将本机文件实时同步到Dropbox上。但这种方式可能会影响到我们系统的性能，我们可以结合Windows的备份工具ntbackup在系统不太繁忙的时候做备份。利用ntbackup做定时备份，只要跟着向导，很轻松就能完成设置，我们这里只介绍需要注意的地方：
在下图中我们选择最后一项：

![](http://kb.51hosting.com/kb/bak11.png)

在之后的对话框是选择要备份的目录，这里我选择Inetpub这个目录。如下图：

![](http://kb.51hosting.com/kb/bak12.png)

在之后选择备份文件的存放位置时，一定要选择Dropbox这个文件夹，也就是E:\Dropbox，如下图：

![](http://kb.51hosting.com/kb/bak13.png)

在接下来的对话框中，我们不要点 **完成**，点 **高级**，之后选择您希望的备份方式和时间。关于ntbackup的备份方式与定时备份，网上有很多介绍的文章，可以自行参考，这里不赘述。一旦备份完成，Dropbox就会将该备份文件实时上传到Dropbox网站。
