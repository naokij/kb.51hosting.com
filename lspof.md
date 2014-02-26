<!-- --- tag:  云主机 vps lsof -->


<!-- --- title: 如何找出当前linux系统里正占用端口的那个进程？ -->
#如何找出当前linux系统里正占用端口的那个进程？


在使用Linux系统的过程中，有时候会遇到端口被占用而导致服务无法启动的情况。比如HTTP使用80端口，但当启动httpd时，却发现此端口正在使用。这种情况大多数是由于软件冲突或者默认端口设置不正确导致的，此时需要查看究竟哪个进程占用了端口，来决定进一步的处理方法。
 
**一：查看端口占用情况的命令：lsof -i**<br>

[root@www ~]# lsof -i<br>

 
COMMAND PID USER FD TYPE DEVICE SIZE NODE NAME<br>

nginx 2333 root 6u IPv4 6242 TCP *:http (LISTEN)

nginx 2334 www 6u IPv4 6242 TCP *:http (LISTEN)

sshd 2349 root 3u IPv6 6283 TCP *:ndmp (LISTEN)

sshd 2349 root 4u IPv6 6286 TCP *:ssh (LISTEN)<br>

这里返回了Linux当前所有打开端口的占用情况。第一段是进程，最后一列是侦听的协议、侦听的IP与端口号、状态。如果端口号是已知的常用服务（如80、21等），则会直接显示协议名称，如http、ftp、ssh等。<br>
 
**二：查看某一端口的占用情况： lsof -i:端口号**<br>
[root@www ~]# lsof -i:21


COMMAND PID USER FD TYPE DEVICE SIZE NODE NAME

pure-ftpd 2651 root 4u IPv4 7047 TCP *:ftp (LISTEN)

pure-ftpd 2651 root 5u IPv6 7048 TCP *:ftp (LISTEN)

这里显示出21号端口正在被pure-ftpd使用，状态是listen。
 
**三:结束占用端口的进程：killall 进程名**<br>
虽然我们不建议用这种本末倒置的方法来解决冲突问题，但某些情况下还是可以直接结束掉占用进程的（比如重启Apache时进程没有完全退出，导致重启失败）<br>

[root@www ~]# killall pure-ftpd
