---
{{tag>cpanel 域名}}
---

#如何在cPanel面板中设置附加域

cPanel空间的优点之一是:一个空间可以绑多个域名做多个不同的网站。

通过设置附加域就可以实现一个空间放多个不同的站点，也就是能绑子目录。
例如：我用yourdomain.org这个域名申请一个cPanel空间，如果我有另外一个域名cpanel123.com，那么，我就不需要购买新空间，直接用附加域(addon domain)功能，即可在空间中添加新网站。

*1. 在cPanel主界面点击"附加域"

![](http://ww1.sinaimg.cn/large/a74eed94jw1e14pyiquvzj.jpg)

*2. 在”附加域维护“页面，输入域名（注意不要填写www)，目录名，密码，点击”添加域“，域名设置成功

![](http://ww1.sinaimg.cn/large/a74e55b4jw1e14syx9mqhj.jpg)

###补充说明：

系统会自动在网站的根目录（public_html）下建立51hosting文件夹，51hosting文件夹就是这个新网站的根目录，直接把网站文件上传到/public_html/51hosting/目录里。

###注意事项：

如果提示绑域名出错，请修改域名的NS解析，确保域名的NS使用的是主机所提供的NS，而不是你自己的NS，否则是绑不上的！(主机的ns，可以联系主机提供商索取)

