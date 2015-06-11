**HP Ilo2遠端控制KVM使用教學以及注意事項**

**第一步:**
![](http://content.screencast.com/users/billese10/folders/Jing/media/2de1d248-9a33-43c8-a3b9-6b2e0ae33aad/002.jpg)

我們會給你一組帳號或密碼給你，照著我們寄給你帳密即可登入。PS:此方法適用瀏覽器建議使用火狐(Firefox),不建議使用Chrome以及IE後續要操作一些東西所以不適用。

**第二步:**
![](http://content.screencast.com/users/billese10/folders/Jing/media/a84ea4ff-e609-45b9-ba8b-148688c5b13a/003.jpg)

當我們進入這個畫面，首頁上是這台機器的型號以及電源還有你的遠端IP還有這台機器上的韌體版本還有電源開關等等等….進入KVM我們點選上面的”Remote Console”這選項。

**第三步:**
![](http://content.screencast.com/users/billese10/folders/Jing/media/16e3e0aa-d433-4e74-a1c5-993fbc63605b/004.jpg)

進入後看到有個”Remote Console”點下去,要注意的是要看看你電腦裡是否有安裝Java如果沒有安裝請你去Java官方網站下載並且安裝,因為進入後會依靠Java程式再走。
PS:下載Java程式版本建議版本Java 7版本才可以,Java 8目前有相容問題容易出現錯誤跑不出來情況不建議安裝至Java 8版本。
Java官方網站提供7版本: https://java.com/zh_TW/download/manual_java7.jsp

**第四步:**
![](http://content.screencast.com/users/billese10/folders/Jing/media/02a883d9-c1b0-4b3b-a3a6-844c10762b7d/005.jpg)

進來後,Java這套程式會要求你點一些有的沒的,通常第一次使用都會遇到有錯誤問題!如此圖上把我們給你遠端IP這塊網址請先複製起來!
![](http://content.screencast.com/users/billese10/folders/Jing/media/26303929-4694-482c-9e5e-e0a0ce028922/55567.jpg)

至我們控制台如果顯示是這樣直接點如此圖上右上角選擇圖片變大(Large icons)
![](http://content.screencast.com/users/billese10/folders/Jing/media/9aebde7c-9dcd-4d56-92b0-911b63fdd063/55568.jpg)

換成圖片變大後,會看到Java程式點進去(每個作業系統位元不同,假如是32位元是不會顯示(32-bit)
![](http://content.screencast.com/users/billese10/folders/Jing/media/1cbe9c65-14d3-4a4d-8591-65ba8eddecec/007.jpg)

圖(1)

![](http://content.screencast.com/users/billese10/folders/Jing/media/1d4e0a59-162a-4c0a-8030-d8fd0ed3ea6c/2015-05-19_1018.png)

(圖2)

進去後請點Security(圖1)把剛剛複製好遠端的網址IP加入Exception Site List裡面(圖2),這樣就可以支援了!!

第五步:
接著我們在跳回去Firefox點進去接下來照著Java該執行的都按下去PS:如果還是繼續出現錯誤跑不出來請關閉瀏覽器再重新登入一次!
![](http://content.screencast.com/users/billese10/folders/Jing/media/d98e2531-f854-4452-97f1-ad75d9070dd7/006.jpg)

這樣就代表已經成功,已利用KVM開始在跑囉!