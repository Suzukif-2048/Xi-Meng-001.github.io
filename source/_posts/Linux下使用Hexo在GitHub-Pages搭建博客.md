---
title: Linux下使用Hexo在GitHub Pages搭建博客
date: 2023-08-20 16:34:11
tags: [教程, Hexo, Github Pages]
cover: https://s1.ax1x.com/2023/08/20/pP841xA.png
banner: https://s1.ax1x.com/2023/08/20/pP841xA.png
references:
  - title: 'Linux下使用Hexo在GitHub Pages搭建博客'
    url: https://blog.xzh.gs/2022/04/07/hexo-github_pages/
---

搭建博客

<!--more-->

# 配置环境
配置搭建`Hexo`所需要的本地环境，包括`Git`、`Node.js`和`Hexo`本身。

## 安装Git
需要Git把本地博客提交到GitHub上，如果已经安装了Git，可以跳过这一步。
{% tabs active:2 align:center %}

<!-- tab Debian系 -->
{% copy sudo apt-get update && sudo apt-get install -y git %}

<!-- tab RedHat系 -->
{% copy sudo yum update && sudo yum install -y git %}

{% endtabs %}

## 安装Nodejs
因为Hexo是基于Nodejs的，所以要先安装Nodejs。
Linux安装命令：
>这里的命令安装的是16版本。
``` BASH
mkdir /opt
wget https://nodejs.org/dist/v16.14.2/node-v16.14.2-linux-x64.tar.xz
tar -xvJf node-v16.14.2-linux-x64.tar.xz
mv node-v16.14.2-linux-x64 /opt/node
rm -rf node-v16.14.2-linux-x64
ln -s /opt/node/bin/node /usr/local/bin/
ln -s /opt/node/bin/npm /usr/local/bin/
ln -s /opt/node/bin/npx /usr/local/bin/
```
由于npm速度较慢，国内建议使用pnpm
{% copy npm install -g pnpm %}
换源:
``` BASH
//查看源
pnpm config get registry 
//切换淘宝源
pnpm config set registry http://registry.npm.taobao.org 
```

## 安装Hexo
{% tabs active:2 align:center %}

<!-- tab npm -->
{% copy npm install -g hexo-cli %}

<!-- tab pnpm -->
{% copy pnpm add hexo-cli -g %}

{% endtabs %}

# 配置博客
## 初始化博客
``` BASH
hexo init blog
cd blog

//npm
npm install
//pnpm
pnpm install
```
这里的blog用来存放博客文件
执行完成之后运行`hexo server`，访问http://IP:4000就能看见你的博客了

## 修改配置文件

创建完成后，目录结构如下
blog/
├── _config.yml
├── package.json
├── scaffolds
├── source
| ├── _drafts
| └── _posts
└── themes

网站的配置文件是`_config.yml`，你可以在里面设置网站的大部分信息。
主要的配置项：

| 参数 | 描述 |
| --- | --- |
| title | 网站标题 |
| subtitle | 网站副标题 |
| author | 网站作者 |
| url | 网址，必须用http/https开头 |
| permalink | [具体参考这里](https://hexo.io/zh-cn/docs/permalinks) |

其他的配置项也可以参考[这里](https://hexo.io/zh-cn/docs/configuration)

## 新建文章
使用`hexo new 'Hello world'`可以在sources/_posts生成一个Hello-world.md的文件，在这个文件里就能写文章了。

# 上传博客到GitHub Pages搭建博客
## 连接GitHub
>以下的username均改成你的GitHub用户名

1.执行`ssh-keygen –t rsa`生成秘钥
2.使用`cat ~/.ssh/id_rsa.pub`拿到公钥
3.复制上一步拿到的公钥，并在Github提交你的公钥
4.在Github创建一个名为`username.github.io`的仓库
5.在`blog`目录输入
``` BASH
git init
git remote add origin git@github.com:username/username.github.io.github
```
6.再输入`npm install hexo-deployer-git --save`或者`pnpm add hexo-deployer-git --save`安装`hexo-deployer-git`
7.修改配置文件`_config.yml`，在底部追加以下内容
``` CONFIG
deploy:
  type: git
  repo: git@github.com:username/username.github.io.git
  branch: gh_pages
```
8.执行 执行 `hexo clean && hexo d -g`即可生成网站文件并自动推送到github
9.打开`username.github.io`仓库的`settings`，转到`Pages`项，将`Branch`设置为`gh_pages`，保存。
10.此时浏览器打开`https://username.github.io`即可访问你的博客！