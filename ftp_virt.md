<!-- --- tag: linux centos 云主机 ftp 进阶  -->
#如何搭建ftp的虚拟账户 

使用场景：ftp账户有三种类型，除了匿名和系统账户，虚拟账户是仅仅给vsftp服务使用的，在系统里是无法登录的，所以在安全性上有很大的保障。

搭建步骤如下：

第一步：添加账号文件 vi /etc/vsftpd/vsftpd.txt  #一行账号，一行密码
<pre><code>user1  
pass2         
user2
pass2 
user3
pass3</code></pre>

第二步：yum -y install db4*           #装txt -db转换生成工具并把生成的db数据库权限改成600

db_load -T -t hash -f /etc/vsftpd/vsftpd.txt /etc/vsftpd/ftpuser.db   

chmod 600 /etc/vsftpd/ftpuser.db   



第三步: vi /etc/pam.d/vsftpd_login     #注意这两个db文件路径不需要写.db

auth required /lib/security/pam_userdb.so db=/etc/vsftpd/ftpuser

account  required /lib/security/pam_userdb.so db=/etc/vsftpd/ftpuser



第四步： useradd -d /home/ftpsite  -s /sbin/nologin  ftp_virt  #创建虚拟用户的总账户和目录，刚才txt文档里那些用户都映

射成vuser
               chmod 700  /home/ftpsite

第五步：vi /etc/vsftpd/vsftpd.conf    # 增加三行设定，因为之前pam模块是自己写的，要指定pam_service_name

pam_service_name=vsftpd_login

guest_enable=yes

guest_username= ftp_virt

virtual_use_local_privs=yes      #让虚拟用户和系统用户权限一样跟着文件系统走，每个用户权限都一样

完成！重启vsftpd服务


 

====== 如果想达到每个用户不同的权限 ======


user_config_dir=/etc/vsftpd      # 把上面配置文件里刚才设置的virtual_use_local_privs=yes替换成左边这条命令，然后还要继续下面设置 



mkdir /var/ftp/dir1

mkdir/var/ftp/dir2

chown ftp_virt /var/ftp/dir1

chown ftp_virt /var/ftp/dir2

vi /etc/vsftpd/user1 

local_root=/var/ftp/dir1

vi /etc/vsftpd/user2

local_root=/var/ftp/dir2
 
vi /etc/vsftpd/user3

local_root=/var/ftp/dir2

anon_mkdir_write_enable=yes

anon_other_write_enable=yes

anon_upload_enable=yes

anon_world_readable_only=yes

write_enable=yes 