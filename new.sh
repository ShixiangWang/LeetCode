#!/usr/bin/env bash
# Create a new directory for a LeetCode problem
# @Copyright 2021 Shixiang Wang

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/leetcode
DIR="$DIR"/"$1"

mkdir -p "$DIR"
touch "$DIR"/{main.go,main.R,README.md}

cat <<EOT >> "$DIR"/README.md
# 

**难度：**

参考：

- https://leetcode-cn.com/problems/two-sum


## 问题

## 题解

EOT
