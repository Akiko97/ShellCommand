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

# 管道

# 數學運算
var1=10
var2=20
var3=$(expr $var2 / $var1)
echo result: $var3
var3=$[$var2 * 3]
echo result: $var3
echo result: $[1 + 5]
echo result: $[$var3 / ($var1 + $var2)]
echo result: $[100 / 45] # bash只支持整數運算
## 使用bc
var1=$(echo "scale=4; 3.44 / 5" | bc)
echo result: $var1
var1=100
var2=45
echo result: $(echo "scale=4; $var1 / $var2" | bc)
var1=10.46
var2=43.67
var3=33.2
var4=71
variable=$(bc << EOF
scale = 4
a1 = ($var1 * $var2)
b1 = ($var3 * $var4)
a1 + b1
EOF
)
echo result: $variable