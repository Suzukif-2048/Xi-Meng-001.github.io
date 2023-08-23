#!/bin/bash

# 配置环境
npm install -g hexo-cli pnpm
mkdir hexo
cd hexo
hexo init
pnpm install
rm -rf source/_posts
mkdir -p source/_posts

# 使用新的渲染器
pnpm un hexo-renderer-marked --save
pnpm i hexo-renderer-markdown-it --save
# 处理图片
pnpm i hexo-image-link --save

# 复制文章到指定目录
cd ../
cp -r `ls | grep -v hexo | grep -v config.yml | xargs` hexo/source/_posts
# 复制配置文件
cp config.yml hexo

# 开始构建
cd hexo && hexo g --config config.yml