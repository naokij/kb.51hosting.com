<!-- --- tag: linux 云主机 独立服务器 -->
<!-- --- title: 如何解压.tar.xz文件 -->
#如何解压.tar.xz文件

这种文件是使用tar打包后再压缩生成的。解压方法是： <br \> 

　　1、xz -d **.tar.xz <br \>

　　2、tar -xvf **.tar <br \>

如没有按照xz工具，则首先需要下载、安装xz工具： <br \>

　　http://tukaani.org/xz/xz-4.999.9beta.tar.bz2 <br \>

安装： <br \>

　　1、tar -jxvf xz-4.999.9beta.tar.bz2 <br \>

　　2、cd xz-4.999.9beta <br \>

　　3、./configure --prefix=/ <br \>

　　4、make <br \>

　　5、sudo make install <br \>