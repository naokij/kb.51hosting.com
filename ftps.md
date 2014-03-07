<!-- --- tag:  linux centos vsftpd  ftp 进阶  -->

<!-- --- title: 如何设置FTPS？centos5.9/6.3 -->
#如何设置FTPS？centos5.9/6.3

**使用情景：**由于ftp是个不加密的传输协议所以可以搭建ftp+ssl方式来加密

步骤如下：


第一步：.先保证系统里有系统用户：


> useradd test    #增加个用户

> passwd  test   # 设置密码


>第二步：生成证书

>yum -y install   vsftpd  make

>cd /etc/pki/tls/certs/

>make vsftpd.pem   #会询问一些问题，随便填，邮箱这步填入个邮箱

>cp -a vsftpd.pem /etc/vsftpd/vsftpd.pem

第三步：在配置文件里增加条目

>vi /etc/vsftpd/vsftpd.conf   #输入以下内容：


> ssl_enable=yes

> force_local_data_ssl=yes

> force_local_logins_ssl=yes

> rsa_cert_file=/etc/vsftpd/vsftpd.pem

> ssl_ciphers=HIGH       


第四步：用客户端去连接


在“加密”多选栏和登录类型里选择如图，账户是"步骤一"的账户和密码图片 

![](http://kb.51hosting.com/kb/ftps.png)