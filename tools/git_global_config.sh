#!/bin/bash

# Run this script to initialize global config for git

# git diff tab 4 spaces
git config --global core.pager 'less -x1,5'

# git diff 显示颜色
git config --global color.diff auto 

# git status 显示颜色
git config --global color.status auto 

# git branch 显示颜色
git config --global color.branch auto 

# 默认editor 当出现 Could not execute editor 错误时更改此设置
git config --global core.editor "/usr/bin/vim" 

# 用以解决日语文件名造成的诡异问题(显示Untracked, 删了以后又显示Deleted, 详见: http://btmn.jp/2012/08/22/git-1-7-12-utf8-mac/)
git config --global core.precomposeunicode true 

# 查看提交历史的拓扑关系图
git config --global alias.graph 'log --graph -C -M --pretty=format:"<%h> %ad [%an] %Cgreen%d%Creset %s" --all --date=short'
