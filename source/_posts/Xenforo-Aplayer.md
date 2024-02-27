---
title: 「🌐」为你的Xenforo论坛帖子添加Aplayer播放器!
date: 2024-02-27 21:53:03
tags: [Xenforo, Aplayer, 论坛, 教程]
cover: https://gcore.jsdelivr.net/gh/Suzukif-2048/BlogFile/image2/XenForo.png
---

添加Aplayer播放器ฅ●ω●ฅ
<!-- more -->

## 效果图

{% image https://gcore.jsdelivr.net/gh/Suzukif-2048/BlogFile/image2/Aplayer-Xenforo1.jpg %}

## 正文

### 开始
首先进入Xenforo后台
点击侧边栏，进入自定义BB代码
如图
{% image https://gcore.jsdelivr.net/gh/Suzukif-2048/BlogFile/image2/Aplayer-Xenforo2.jpg %}

### 添加自定义代码
点击添加BB代码

BB代码标签，标题，描述随意添加

HTML替换填入如下图所示
``` HTML
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aplayer/dist/APlayer.min.css">
<script src="https://cdn.jsdelivr.net/npm/aplayer/dist/APlayer.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/meting@2.0.1/dist/Meting.min.js"></script>
<meting-js server="netease" type="song" id="{text}"></meting-js>
```

### 参数
- `server` 指定API，可选`netease`，`tencent`，`kugou`，`xiami`，`baidu` 分别对应网易云音乐、QQ音乐、酷狗音乐、虾米音乐、百度音乐
- `type` 调用类型，可选`song`, `playlist`, `album`, `search`, `artist` 分别对应单曲、歌单、专辑、搜索结果、艺术家
- `id` 指定id
