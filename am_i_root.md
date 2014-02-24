---
{{tag> 云主机 vps nfs }}
---


#如何快速搭建NFS共享服务器centos5.9/centos6.3 64位

简介：Nfs的优点很多，速度快，而且可以挂载后像本地操作文件一样，具体请自己慢慢体会。<br>
下列以199.101.117.34为nfs服务器，64.78.172.119为客户端


**在199.101.117.34 nfs服务器下：**<br>
**步骤一：安装nfs需要一个叫nfs-utils的软件包<br>**

    [root@testvpn ~]#yum -y install nfs-utils

**步骤二：新建要分享的目录，如/home/testnfs<br>**

    [root@testvpn ~]#mkdir /home/testnfs
  
**步骤三：在/home/testnfs里新建个文件111.txt(这个文件仅作测试用）**<br>

    [root@testvpn ~]#touch /home/testnfs/111.txt

**步骤四：编辑/etc/exports，写入要共享的文件目录，分享目标和权限**<br>

    [root@testvpn ~]#vi /etc/exports
    

![](http://kb.51hosting.com/_media/kb/nfs3.png)<br>

**步骤五：重启nfs服务使配置生效<br>**

    方法一[root@testvpn ~]service nfs restart
    方法二[root@testvpn ~]exportfs -rv
    

![](http://kb.51hosting.com/_media/kb/nfs4.png)



**在64.78.172.117客户端下：**

**步骤一：安装nfs-utils包，客户端装好这个包就可以用showmount 命令查看服务器有哪些共享资源<br>**

    [root@niko ~]#yum -y install nfs-utils
    [root@niko ~]#showmount -e 199.101.117.34

**步骤二：看到了对方服务器共享后，新建个空目录/nfstest,准备把对方目录挂载到nfstest下<br>**

    [root@niko ~]#mkdir /nfstest
    [root@niko ~]mount 199.101.117.34:/home/testnfs /nfstest

步骤三： 进入/nftest后 就能看到对方/home/testnfs下的测试文件111.txt了<br>

    [root@niko ~]#cd /nfstest;ls -l





  