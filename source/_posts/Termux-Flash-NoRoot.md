---
title: 「📱」无Root使用Termux实现手机给手机刷机
date: 2023-12-12 20:41:00
tags: [Termux, 教程, 刷机]
cover: https://s2.loli.net/2023/12/12/reYVS62NlF8sMyk.png
references:
  - title: 'TERMUX手机给手机刷机教程基于termux-usb的免root fastboot手机刷手机记录贴'
    url: https://www.coolapk.com/feed/38576397?shareKey=NDA3YmUzZTRiNGIwNjU3ODU3MDQ~&shareUid=22523276&shareFrom=com.coolapk.market_13.3.1
---

使用Termux实现手机给手机刷机

<!--more-->

## 软件准备

### 安装Termux

点击[这里](https://f-droid.org/zh_Hans/packages/com.termux/)进入网站下载安装Termux

### 安装Termux:API
点击[这里](https://f-droid.org/packages/com.termux.api/)下载安装Termux:API

## 环境准备
### 获取存储权限
输入`termux-setup-storage`然后回车
输入{% kbd y %}键获取存储权限
如下图所示则说明获取成功
{% image https://s2.loli.net/2023/12/12/HTXIwsxbezBWDO2.jpg %}
### 安装软件包
首先输入命令`pkg update`更新包列表
再输入`pkg upgrade`更新所有包
{% psw 如果觉得速度慢可以换源，换源方法此处省略 %}

接着`pkg install android-tool`和`pkg install termux-api`来安装adb工具和termux-api
## 设备连接
被刷手机关机进入Fastboot模式
给两台手机都插上usb otg线
输入`termux-usb -l`
如果界面如下图所示
{% image https://s2.loli.net/2023/12/12/vC81AdNfZSwtyUl.jpg %}
则已检测到设备

复制所给路径{%psw (路径以实际为准) %}
输入
``` BASH
termux-usb -r -e $SHELL -E "路径"
```
回车

现在可以输入`fastboot devices`来查看设备
## 刷写
最后即可通过fastboot命令来刷写设备了
