#!/bin/bash
source ~/.bashrc
# 定义一些全局变量
BASE_DIR="/Users/ericlixj/Documents/workspace-java/coinexchangeservice"     # 项目根目录路径

cd "$BASE_DIR"
# Maven 构建
echo "Cleaning and packaging project coinexchangeservice..."
mvn clean package

# 检查 Maven 构建是否成功
if [ $? -ne 0 ]; then
  echo "Maven build failed for project coinexchangeservice ."
  exit 1
fi
echo "sucess!"