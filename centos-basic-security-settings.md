#CentOS基本安全设置
安全设置对于服务器来说非常重要，下面以CentOS 6为例子，讲一讲CentOS的基本安全设置，本文同样适用于RHEL 6。

##系统更新
这个环节比较容易被忽略，但是非常重要。RHEL/CentOS会不定时针对最新的安全漏洞发布更新，没及时更新的系统是不安全的。推荐使用`yum update`进行系统更新。

##加固SSH
SSH是管理CentOS最常用的工具，SSH本身的设计比较安全，但是在网络安全问题严重的今天，你不会拒绝加固SSH服务。

###修改SSH端口

    nano /etc/ssh/ssh_config

找到`#Port 22`，删除`#`，然后将`22`改成你的幸运数字。

    service sshd restart

重启sshd，端口号就改成你刚才设置的幸运数字了，以后登录的时候，注意指定端口号。

###设置防火墙

  yum install system-config-firewall-base
  lokkit -s http
  lokkit -s ftp
  lokkit -s ssh

上面的设置仅打开http,ftp和ssh的端口，lokkit使用很简单，你可以直接输入`lokkit`获取帮助信息。

###[通过DenyHosts防止暴力破解](/denyhost)