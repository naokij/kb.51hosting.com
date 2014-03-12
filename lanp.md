<!-- --- tag: LNMP,Ubuntu上手,linux -->
<!-- --- title: LNMP一键安装包 -->
#LNMP一键安装包

也许大家对LAMP比较熟悉，LAMP代表Linux下Apache、MySQL、PHP这种网站服务器架构；同上LNMP代表的就是Linux下Nginx、MySQL、PHP这种网站服务器架构。下面给大家介绍LNMP包的一键安装方法。

### 系统需求

需要2 GB硬盘剩余空间
128M以上内存,OpenVZ的建议192MB以上(小内存请勿使用64位系统)
Linux下区分大小写，输入命令时请注意！

## 安装步骤

### 1.SSH登陆服务器

使用putty或类似的SSH工具登陆服务器，
登陆后运行：#screen -S lnmp
如果提示screen命令不存在可以执行：#yum install screen 或 #apt-get install screen安装。

### 2.下载LNMP一键安装包

您可以选择使用下载版(推荐国外或者美国VPS使用)或者完整版(推荐国内VPS使用)
如需下载版执行命令：

wget -c http://soft.vpser.net/lnmp/lnmp0.9.tar.gz

如需完整版执行命令：

wget -c http://soft.vpser.net/lnmp/lnmp0.9-full.tar.gz
下载完成后LNMP一键安装包就会被下载到您的服务器或VPS上（一般用root登陆没切换目录的话应该在/root 下面）。

### 3.解压LNMP一键安装包

执行：tar zxvf lnmp0.9.tar.gz 或 tar zxvf lnmp0.9-full.tar.gz 就会将LNMP一键安装包解压缩。


### 4.开始安装LNMP一键安装包

进入LNMP安装目录，执行：cd lnmp0.9/ 或 cd lnmp0.9-full/
再执行安装程序前需要您确认您的Linux发行版，可以执行：cat /etc/issue 查看是CentOS、Debian还是Ubuntu，也可以通过VPS服务商提供的控制面板上查看。确定好之后，选择下面对应系统的安装命令：

CentOS系统下的安装
执行./centos.sh 2>&1 | tee lnmp.log (如果系统是Red Hat Enterprise Linux Server(RHEL)需要先确保yum可以正常安装软件,RHEL安装yum教程)

Debian系统下的安装
执行./debian.sh 2>&1 | tee lnmp.log

Ubuntu系统下的安装
执行./ubuntu.sh 2>&1 | tee lnmp.log
执行安装命令后，会出现如下界面： 
![](http://lnmp.org/images/screenshots/lnmp-install-input-domain.jpg)
输入要绑定的域名(建议使用一个二级域名,该域名会绑定到/home/wwwroot/,方便以后管理！如果输入有错误，可以按住Ctrl再按Backspace键删除)，输入完成后回车，会显示如下界面：
(注：如果是Debian系统，输入域名后会提示Where are your servers located? asia,america,europe,oceania or africa，这里是选择服务器或VPS在哪个大洲,输入地区按回车。)

![](http://lnmp.org/images/screenshots/lnmp-install-input-mysql-root-password.jpg)

再输入要设置的MySQL root的密码，输入完成后回车，会显示如下界面： 
![](http://lnmp.org/images/screenshots/lnmp-install-input-mysql-innodb.jpg)

如果需要安装InnoDB，可以输入 y 回车，不需要的话直接回车即可。回车后会显示如下界面：

![](http://lnmp.org/images/screenshots/lnmp-install-press.jpg)

提示"Press any key to start..."，按回车键开始安装。
LNMP脚本就会自动安装编译Nginx、MySQL、PHP、phpMyAdmin、Zend Optimizer这几个软件。

###5.安装完成
如果显示如下界面：

![](http://lnmp.org/images/screenshots/lnmp-install-success.jpg)

说明已经安装成功。

[转载至lnmp.org](http://lnmp.org/install.html)
