<!-- --- tag:  云主机 vps  ssh免密码登录  -->


<!-- --- title: 如何ssh免密码登录linux服务器？ -->
#如何ssh免密码登录linux服务器？

  简介：一般情况下利用ssh登录服务器都是需要手动输入密码这个环节，但是在写脚本的时候经常需要自动化而不希望有人机交互的情况发生，如何让脚本自动ssh登录服务器呢？



操作步骤：（注意都是在客户端上操作）

**第一步在客户机上运行以下命令，提示的输入一律回车**

    [root@niko ~]# ssh-keygen -t rsa

**第二步在客户机上执行如下命令，他会在~/.ssh下生成公私密钥文件  ** 
    
    [root@niko ~]# ssh-keygen -t rsa 

**第三步 进入公私钥文件目录**
    
     [root@niko ~]# cd .ssh/

**第四步 拷贝公钥到对方服务器上，会有提示输入对方服务器密码，完成后就ok了**
    
    [root@niko .ssh]# ssh-copy-id -i id_rsa.pub root@199.101.117.xx



  ** 验证效果：  直接ssh 199.101.117.xx 不用密码直接登录了**

    Last login: Mon Dec  9 09:27:21 2013 from 180.173.93.6
    [root@niko ~]# ssh 199.101.117.xx
    Last login: Mon Dec  9 01:45:16 2013 from 180.173.93.6
    [root@testvpn ~]# 

  