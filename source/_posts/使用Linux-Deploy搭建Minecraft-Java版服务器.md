---
title: 「📱」使用Linux Deploy搭建Minecraft Java版服务器
date: 2023-08-19 17:00:00
tags: [教程, Linux Deploy]
cover: https://s1.ax1x.com/2023/08/19/pP3b62D.png
---

使用Linux Deploy搭建Minecraft Java版服务器

<!-- more -->

{% note color:yellow Warn 不建议使用Linux Deploy搭建Minecraft Java版服务器 %}

>## 首先你需要的东西有:
>
>ROOT
>Linux Deploy软件
>SSH软件
>~~一个好用的脑子~~

## 安装chroot容器
安装完Linux Deploy后
点击右下角的图标，进入如下界面
![](https://s1.ax1x.com/2023/08/19/pP3qTT1.jpg)
第一次安装记得改源地址
``` HTML
Debian阿里云源:http://mirrors.aliyun.com/debian/
Debian清华源:http://mirrors.tuna.tsinghua.edu.cn/debian/
```
>架构选自己常用的系统就好，我以Debian为例
>安装类型选***目录***，安装路径填/data/linux/系统

接下来就返回主界面，点击安装就好啦! 安装时间5-10分钟

## 搭建minecraft服务器
使用SSH软件连接到容器后
输入以下命令
``` HTML
sudo apt install wget openjdk-17-jdk vim -y
mkdir MCserver
cd MCserver
```
接着就是选择服务器核心的部分啦
我用Spigot核心进行演示

下载Spigot核心
{% copy wget https://download.getbukkit.org/spigot/spigot-1.20.1.jar #速度较慢，建议使用魔法 %}

开服命令
{% copy java -Xmx2048M -Xms2048M -jar spigot-1.20.1.jar %}

运行完后打开eula.txt文件
{% copy vim eula.txt %}

接着按下{% kbd I %}键
把false更改成true
最后{% kbd Esc %} ```:wq```

再运行一次开服命令就可以使用```1.20.1版本的MC```进入服务器啦
默认服务器ip:```127.0.0.1:25565```
