<!-- --- tag:  linux shell ddos  -->
<!-- --- title: 简单的防御ddos的shell脚本（转载） -->
#简单的防御ddos的shell脚本（转载）

如果服务器一直受到DDOS的攻击，目前只能通过封IP来源来暂时解决。IP不源变化多端，光靠手工来添加简直是恶梦，想了个方法，用SHELL来做。
比较简单，但很实用：）
  
##1.编写脚本

    [root@testvpn ~]#mkdir /root/bin
    [root@testvpn ~]#vi /root/bin/dropip.sh

```shell
#!/bin/bash
/bin/netstat -na|grep ESTABLISHED|awk ‘{print $5}’|awk -F: ‘{print $1}’|sort|uniq -c|sort -rn|head -10|grep -v -E      ’192.168|127.0′|awk ‘{if ($2!=null && $1>4) {print $2}}’>/tmp/dropip
for i in $(cat /tmp/dropip)
do
/sbin/iptables -A INPUT -s $i -j DROP
echo "$i kill at `date`">>/var/log/ddos
done
```

##2.增加执行权限
    
    [root@testvpn ~]#chmod +x /root/bin/dropip.sh

##3.添加到计划任务，每分钟执行一次

    crontab -e
    */1 * * * * /root/bin/dropip.sh

说明：
以上脚本比较简单，但很实用，最重要的是第二行，获取ESTABLISHED连接数最多的前10个ip并写入临时文件/tmp/dropip,排除了内部ip段192.168|127.0开头的.通过for循环将dropip里面的ip通过iptables全部drop掉，然后写到日志文件/var/log/ddos