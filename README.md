# FakeWeChatLocation
A tweak that can fake location info in WeChat

### 1. How does it work
1) Set the location after app finish launching
![79259IMG_0008.PNG](https://github.com/PandaraWen/FakeWeChatLocation/blob/master/images/79259IMG_0008.PNG)

<br>2) Then when you enter the page "People Nearby", you will see you are located in where you set
![47304IMG_0010.PNG](https://github.com/PandaraWen/FakeWeChatLocation/blob/master/images/47304IMG_0010.PNG)

<br>3) As well as the page Moments
![5566IMG_0009.PNG](https://github.com/PandaraWen/FakeWeChatLocation/blob/master/images/5566IMG_0009.PNG)

### 2. How to install
#### 2.1 Change some values in Makefile
* <b>THEOS_DEVICE_IP: </b> You JailBreak iOS device's ip, staying in the same wifi network with your mac
* <b>TARGET: </b> iOS SDK version you use

#### 2.2 Install
```
make package install
```
I thinke you can understand it if you have access to iOS APP reverse enginerring.
