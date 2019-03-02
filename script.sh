#!/bin/bash
# 顯示消息
echo -n "輸出時間: "
date
echo "換行輸出時間:"
date

# 變量
## 環境變量
echo USER: $USER
echo "UID: $UID"
echo "HOME: ${HOME}"
echo "money $15" # 顯示環境變量$1的值
echo "money \$15" # 顯示$字符
## 用戶變量
num=1
string="Hello, World"
echo "$string $num"
num=2
echo "$string $num"
num_tmp=num
echo "$string $num_tmp" # 顯示Hello, World num
num_tmp=$num
echo "$string $num_tmp" # 顯示Hello, World 2
## 命令替換
date_string1=`date`
date_string2=$(date)
echo "Time: " $date_string1
echo "Time: " $date_string2
echo "PWD: " `pwd`
echo "PWD: " $(pwd)
### 變量替換應用
today=$(date +%y%m%d)
ls -alF `pwd` > ${today}-PWDLS.log
#### 命令替換會創建一個子shell來運行對應的命令，無法使用腳本中創建的變量
#### 命令提示符下使用路徑./運行命令也會創建子shell
#### 運行命令不加入路徑則不創建子shell
#### 內建shell命令不涉及子shell

# 輸入輸出重定向
# TODO