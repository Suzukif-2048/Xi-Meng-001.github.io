---
title: 「🤖」Yunzai-Bot Termux安卓搭建教程
date: 2023-09-16 16:25:12
tags: [教程, Termux, Yunzai]
cover: https://s2.loli.net/2023/10/29/NIs4eylD1Ob8PCm.jpg
---

云崽，原神qq群机器人，通过米游社接口，查询原神游戏信息

<!--more-->

## 准备需要
> Termux,{% del 一个会查百度的脑子 %}

## 安装Proot容器

打开Termux
更新软件源`apt update`
输入以下脚本:
{% copy curl -LO https://gitee.com/mo2/linux/raw/2/2.awk; awk -f 2.awk %}
接下来一直输入y
之后会看到这样的界面
![](https://z1.ax1x.com/2023/09/16/pPfUIYj.jpg)
点击Proot容器
![](https://z1.ax1x.com/2023/09/16/pPfUj7F.jpg)
选择Ubuntu
![](https://z1.ax1x.com/2023/09/16/pPfUxk4.jpg)
接着选择喜欢的版本
点击启动容器
等待安装

## 安装Node.js,pnpm,redis
进入容器

这里采用之前Hexo博客的安装脚本{% psw (把x64都改成arm64就行了) %}
``` BASH
mkdir /opt
wget https://nodejs.org/dist/v16.14.2/node-v16.14.2-linux-arm64.tar.xz
tar -xvJf node-v16.14.2-linux-arm64.tar.xz
mv node-v16.14.2-linux-arm64 /opt/node
rm -rf node-v16.14.2-linux-arm64
ln -s /opt/node/bin/node /usr/local/bin/
ln -s /opt/node/bin/npm /usr/local/bin/
ln -s /opt/node/bin/npx /usr/local/bin/
```

输入以下命令安装pnpm和redis
{% copy npm install pnpm redis -g %}

## 克隆项目
### 安装git
{% copy sudo apt install git %}
### 克隆云崽
{% copy git clone --depth=1 -b main https://gitee.com/yoimiya-kokomi/Yunzai-Bot.git %}

## 使用方法
1.进入云崽目录
``` BASH
cd Yunzai-Bot
```
2.安装依赖
{% copy pnpm install -P %}
3.运行(首次运行会提示登录哦)
{% copy node app %}
接下来照着提示来就行了

## Q&A
{% folding Q:登录失败怎么办 color:cyan %}
A:{% del 可能是腾讯的风控问题，搭建[签名服务器](https://github.com/fuqiuluo/unidbg-fetch-qsign)即可解决问题 %}(已作废)
{% endfolding %}

{% folding Q:chromium启动失败? color:cyan %}
A:可以尝试回退版本`pnpm add puppeteer@13.7.0 -w`
{% endfolding %}
