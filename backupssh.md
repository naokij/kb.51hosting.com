<!-- --- tag:  云主机 vps 每日备份网站数据 -->


#如何利用shell脚本备份网站数据到远程linux主机上
每日手动备份网站数据是非常枯燥的，可以利用shell脚本每天定时的去给网站做备份，上传到另一台linux服务器上，本教程是利用每天的日期作为文件名，这样可以简单的从文件名上知道备份是哪天数据。以下的网站环境是rpm安装的环境，也就是配置文件在/etc/httpd/conf下。

第一步: 设置免密码登录 请参考 [如何ssh面密码登录linux服务器 ](http://kb.51hosting.com/kb/sshkey.md?s[]=%E5%85%8D)

    
    
第二步：输入以下代码后（注意最后一行的199.101.117.xx改成你自己的那个服务器地址) 保存退出

    [root@niko ~]# vi backup.sh 

<script src="https://gist.github.com/naokij/7886260.js"></script>
    
 第三步 crontab -e 设置每日定时
    
    [root@niko ~]# crontab -e
 
 第四步 设置每日的10:28分运行backup.sh脚本，注意脚本名最好写绝对路径 
    
    28 10 * * * /root/backup.sh
 
第五步  设置脚本运行权限

    [root@niko ~]#chmod +x /root/backup.sh

第六步 在另一台也就是要存放备份的服务器上新建backup这个文件夹

    [root@testvpn backup]#mkdir /backup