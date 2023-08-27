---
title: Cloudreve更改站点图标
date: 2023-08-28 01:35:23
tags: [教程, Cloudreve]
cover: https://pan.isese.top/f/J1CK/logo.svg
references:
  - title: '修改站点图标 教程'
    url: https://forum.cloudreve.org/d/1765
---

# 前言
因为我自己搭了个[Cloudreve盘](https://pan.isese.top)想改下站点图标，查找了{% del 许多 %}教程才搞成了
{% del 其实主人就是照抄|･ω･｀) %}

# 教程
## 提取静态资源
首先使用
{% copy ./cloudreve -eject %}
这时你就会发现多出了`statics`目录，静态资源就在这里面（￣▽￣）

## 替换文件
进入`statics`目录
文件如下:
{% image https://pan.isese.top/f/V5Te/Screenshot_2023-08-28-01-45-43-62_df198e732186825c8df26e3c5a10d7cd.jpg %}
接着进入`\static\img`目录
替换下列文件
`favicon.ico`
再运行下Cloudreve，就会发现你的站点图标就成功更改啦!ヾ(❀●◡●)ﾉ

此方法只适合简单修改如果想要更多修改
请查看文档https://docs.cloudreve.org/use/zi-ding-yi-qian-duan
自己编译下前端●▽●