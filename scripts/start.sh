#!/bin/bash
source ~/.bashrc
# 定义一些全局变量
BASE_DIR="/Users/ericlixj/Documents/workspace-java/coinexchangeservice"     # 项目根目录路径
TARGET_DIR="/Users/ericlixj/Document/deploy/webapps"     # 统一 JAR 文件目录
LOG_DIR="/Users/ericlixj/Document/deploy/logs"               # 日志文件存放目录

# 检查是否提供了项目名称
if [ -z "$1" ]; then
  echo "Usage: $0 <project-name>[admin|chat|config|exchange|exchange-api|market|otc-api|ucenter-api|wallet]  [additional-jvm-options]"
  exit 1
fi

# 从参数获取项目名称和可选的 JVM 选项
PROJECT_NAME="$1"
JVM_OPTS="$2"

# 项目路径
PROJECT_PATH="$BASE_DIR/$PROJECT_NAME"

# 检查项目路径是否存在
if [ ! -d "$PROJECT_PATH" ]; then
  echo "Error: Project directory '$PROJECT_PATH' does not exist."
  exit 1
fi

# 进入项目目录
cd "$PROJECT_PATH"
#
## Maven 构建
#echo "Cleaning and packaging project $PROJECT_NAME..."
#mvn clean package
#
## 检查 Maven 构建是否成功
#if [ $? -ne 0 ]; then
#  echo "Maven build failed for project $PROJECT_NAME."
#  exit 1
#fi

# 查找生成的 JAR 文件
JAR_FILE=$(find target -name "*.jar" | head -n 1)

# 检查是否找到 JAR 文件
if [ -z "$JAR_FILE" ]; then
  echo "No JAR file found in the target directory of project $PROJECT_NAME."
  exit 1
fi

# 复制 JAR 文件到统一目录
cp "$JAR_FILE" "$TARGET_DIR"
echo "copy $JAR_FILE to $TARGET_DIR"
# 获取 JAR 文件名称
JAR_NAME=$(basename "$JAR_FILE")

# 启动服务
echo "Starting service for project $PROJECT_NAME..."
nohup java $JVM_OPTS -jar "$TARGET_DIR/$JAR_NAME" > "$LOG_DIR/$PROJECT_NAME.log" 2>&1 &
echo "nohup java $JVM_OPTS -jar "$TARGET_DIR/$JAR_NAME" > "$LOG_DIR/$PROJECT_NAME.log" 2>&1 &"
echo "Service for project $PROJECT_NAME started with PID $!"
tail -100f $LOG_DIR/$PROJECT_NAME.log
