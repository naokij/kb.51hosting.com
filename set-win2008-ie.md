<!-- --- tag: 云主机 faq Win2008 IE 独立服务器 -->

<!-- --- title: 解决Windows Server2008 R2中IE开网页时弹出阻止框  -->
#解决Windows Server2008 R2中IE开网页时弹出阻止框 


相信使用Windows Server2008的朋友都遇到过这种情况，用IE打开网站时会弹出“Internet Explorer增强安全配置正在阻止来自下列网站的此应用程序中的内容”的对话框。如下图所示：


![](http://i3.minus.com/iHwVX1n7QPeGO.png)


在Windows Server2008 禁止弹出此类对话框的步骤

* 1.单击“开始”，然后找到“管理工具”，打开“服务器管理器”。
 
  ![](http://i4.minus.com/i8qEQukOr3vVO.png)

* 2.打开“服务器管理器”，在”安全信息“栏的右侧点击“配置IE ESC”。
 
 ![](http://i5.minus.com/iM6KzTLJfkBrO.png)

* 3.在弹出的对话框“增强的安全配置”中的“管理员”和“用户”都选择为“禁用”。

 ![](http://i5.minus.com/i89rLE9xMlpUJ.png)

* 4.点击确定后，重启浏览器。再浏览网页那烦人的弹出框就不会再出现了。