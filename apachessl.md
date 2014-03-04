<!-- --- tag:  云主机 vps linux apache ssl 进阶  -->
<!-- --- title:  如何配置Apache SSL(centos64 5.9 版本) -->
# 如何配置Apache SSL(centos64 5.9 版本)

**说明**：Internet的线路侦听无处不在，明文传输的数据一不留神就可能被窃取。而Apache的SSL加密连接可协助浏览者更加安全可靠的传输数据。普通的HTTP协议URL是以 http:// 开头，而SSL加密协议则是以 https:// 开头。本章节将介绍CentOS系统下通过仓库（yum）配置apache中SSL加密模块的方法。


**一：默认的ssl证书安装方法**

**首先安装httpd**<br>
[root@www ~]# yum install httpd<br>
**安装完成，直接重启Apache服务：**<br>
[root@www ~]# /etc/init.d/httpd restart<br>
由于安装mod_ssl会创建一个默认的SSL证书，路径位于 /etc/pki/tls,此时可以立即通过https访问<br>
服务器了这时新的证书便已经生效了。刷新浏览器，点击浏览器中的证书标志，便可以看到刚刚制作的证书信息。


**二：用openssl制作自己的证书**<br>
如果不使用默认的证书，也可以使用OPENSSL手动创建证书。操作如下：<br>

![](http://kb.51hosting.com/kb/ssl1.png)


**3、生成证书CRT文件**<br>
[root@www ~]# openssl x509 -days 3650 -req -in server.csr -signkey server.key -out server.crt<br>
上面生成的证书有效期为10年
这时证书的相关文件就都已经生成好了。
当前文件夹下应该有server.crt、server.csr、server.key这三个文件,把他们统一放到自定义的目录，以便自己下次能方便管理。<br>
[root@www ~]# mkdir /etc/pki/tls/mycert<br>
[root@www ~]# mv server.* /etc/pki/tls/mycert<br>
最后仅仅需要修改配置文件来指定证书路径：<br>
**4、指定证书路径**<br>
打开Apache的SSL配置文件 /etc/httpd/conf.d/ssl.conf ：<br>
[root@www ~]# vi /etc/httpd/conf.d/ssl.conf<br>

![](http://kb.51hosting.com/kb/ssl2.png)


这时新的证书便已经生效了。用IE打开您的服务器地址，点击浏览器中的证书标志，便可以看到刚刚制作的证书信息：<br>
![](http://kb.51hosting.com/kb/ssl3.png)