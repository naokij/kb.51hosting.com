---
{{tag> 云主机 vps webshell}}
---


#如何用通过浏览器管理linux服务器（centos5.9 64）<br>

说明：SSH Webshell是一个具有HTTP在线管理界面的SSH服务。<br>
通过SSH Webshell，你可以直接在浏览器界面输入Linux<br>
命令来管理服务器。此Webshell不仅能输出静态的命令，<br>
而且还能执行类似top的命令。它专为移动设备设计，并<br>
且内置了诸如Ctrl等组合键与F?等功能键，因此不用担心<br>
输入问题。下面将以CentOS5.9 64位环境系统为例<br>
Webshell需要Python与OpenSSL，另外还需要一个名为pyOpenSSL的OpenSSL的扩展。<br>
不用担心，这些组件都已经在CentOS的默认源里存在了。

**步骤一：执行安装一些套件**<br>
yum install openssl python pyOpenSSL<br>
以上命令注意大小写。一般来说，openssl与python可能都已经安装了，只有后面的pyOpenSSL才需要安装

**步骤二：安装Webshell
Webshell的运行环境配置完毕后，下载Webshell安装包。
下载地址 http://code.google.com/p/web-shell/downloads/list ，请自己看看有没有更新的版本，然后修改一下下面的wget路径**：

wget http://web-shell.googlecode.com/files/WebShell-0.9.6.zip

unzip WebShell-0.9.6.zip

cd WebShell-0.9.6

**步骤三：生成SSL的证书**

./make_certificate.sh
一步就行了，很简单。

**步骤四：执行启动**
[root@www webshell]# ./webshell.py

WebShell (https) at 0.0.0.0, port 8022<br>
**提示现在可以连接  https://IP:8022/ 了，注意使用https协议**。

 
![](http://kb.51hosting.com/_media/kb/webshell1.png)
 
