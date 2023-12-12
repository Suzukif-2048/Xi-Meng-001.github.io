---
title: 「☁」Cloudreve更改站点图标
date: 2023-08-28 01:35:23
tags: [教程, Cloudreve]
cover: https://s2.loli.net/2023/10/29/59jQPqCRV6pSDdW.png
references:
  - title: '修改站点图标 教程'
    url: https://forum.cloudreve.org/d/1765
---

Cloudreve更改站点图标的教程ヾ(❀●◡●)ﾉ

<!--more-->

# 前言
~~因为我自己搭了个[Cloudreve盘](https://pan.isese.top)想改下站点图标~~

# 教程
## 提取静态资源
首先使用
{% copy ./cloudreve -eject %}
这时你就会发现多出了`statics`目录，静态资源就在这里面（￣▽￣）

## 替换文件
进入`statics`目录
文件如下:
{% image https://s2.loli.net/2023/10/29/gYxLPcMIvJVFelW.jpg %}
接着进入`\static\img`目录
替换下列文件
`favicon.ico`
再运行下Cloudreve，就会发现你的站点图标就成功更改啦!ヾ(❀●◡●)ﾉ

此方法只适合简单修改如果想要更多修改
请查看文档https://docs.cloudreve.org/use/zi-ding-yi-qian-duan
自己编译下前端●▽●
