# FakeWeChatLocation
A tweak that can fake location info in WeChat

### 1. How does it work
1) Set the location after app finish launching
![79259IMG_0008.PNG](http://pandarazone.qiniudn.com/79259IMG_0008.PNG?imageView2/2/w/600)

<br>2) Then when you enter the page "People Nearby", you will see you are located in where you set
![309IMG_0005.PNG](http://pandarazone.qiniudn.com/309IMG_0005.PNG?imageView2/2/w/600)

<br>3) As well as the page Moments
![46180IMG_0007.PNG](http://pandarazone.qiniudn.com/46180IMG_0007.PNG?imageView2/2/w/600)

### 2. How to install
#### 2.1 Change some values in Makefile
* **THEOS_DEVICE_IP: ** You JailBreak iOS device's ip, staying in the same wifi network with your mac
* **TARGET: ** iOS SDK version you use

#### 2.2 Install
```
make package install
```
I thinke you can understand it if you have access to iOS APP reverse enginerring.
