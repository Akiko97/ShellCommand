# ShellCommand
small dictionary of Linux shell command



## 命令列表

| Command | Description      | Arguments                                                    |
| ------- | ---------------- | ------------------------------------------------------------ |
| man     | 手冊頁面         | -k 關鍵字搜索<br/>1 可執行程序/shell命令<br/>2 系統調用<br/>3 庫調用<br/>4 特殊文件<br/>5 文件格式與約定<br/>6 遊戲<br/>7 概覽、約定、雜項<br/>8 super user和system administer命令<br/>9 內核例程 |
| info    | 手冊頁面         |                                                              |
| help    | 幫助信息         |                                                              |
| cd      | 切換目錄         | [空] 切換至主目錄<br/>~ 切換至主目錄<br/>. 當前目錄<br/>.. 父目錄 |
| pwd     | 顯示當前目錄     |                                                              |
| ls      | 列表命令         | -F 明確指示類型<br/>-R 遞歸選項<br/>-a 顯示全部文件<br/>-l 顯示[長列表](#長列表)<br/>-i 查看文件inode信息<br/>-d 只列出目錄本身信息忽略內容<br/>[過濾器](#過濾器)<br/>--time=atime 顯示訪問時間 |
| chmod   | 更改權限         |                                                              |
| chown   | 更改owner        |                                                              |
| touch   | 創建文件         | 備註：owner為創建者，文件大小為0                             |
|         | 改變文件時間屬性 | 備註：不改變文件內容但更新修改時間<br/>-a 改變文件訪問時間   |
| cp      | 複製文件         | -i 詢問操作<br/>-R 遞歸操作<br/>備註：可以使用通配符<br/>警告：目錄的結尾不要忘記/符號 |
| ln      | 鏈接文件         | [空] 創建硬鏈接<br/>-s 創建符號鏈接<br/>[inode](#inode)      |
| mv      | 移動/重命名      | -i 詢問操作<br/>備註：可以操作文件&目錄                      |
| rm      | 移除文件         | -i 詢問操作<br/>-f 強制刪除<br/>備註：可以使用通配符<br/>-r/-R 刪除目錄中的文件及目錄本身 |
| mkdir   | 創建目錄         | -p 同時創建多個目錄及子目錄                                  |
| rmdir   | 移除目錄         | 備註：默認只能移除空目錄                                     |
| file    | 查看文件類型     | 備註：確定文件類型/編碼信息/鏈接原文件/編譯時面向的平台/需要的庫類型 |
| cat     | 查看文件         | -n 顯示加入行號<br/>-b 只顯示非空行行號<br/>-T 不顯示水平制表符（用^I代替） |
| more    | 顯示文件         | 空格鍵：逐頁顯示<br/>回車鍵：逐行顯示                        |
| less    | 分頁工具         | 支持more的全部操作，且支持上下鍵及上下翻頁鍵                 |
| tail    | 顯示文件尾部     | 默認顯示文件最後10行內容<br/>-n [number] 顯示文件最後number行<br/>-[number] 上面的簡寫<br/>-f 活動監視狀態 |
| head    | 顯示文件頭部     | 默認顯示文件開頭10行內容<br/>-n [number] 顯示文件開頭number行<br/>-[number] 上面的簡寫<br/>警告：head不支持-f特性 |

### 長列表

文件類型：目錄d，文件-，字符型文件c，塊設備b

文件權限：讀r寫w執行x，owner/group/others

硬鏈接數

owner用戶名

group組名

字節單位文件大小

上次修改時間

名稱

### 過濾器

在參數後添加過濾器，用以匹配字符

文件擴展匹配：支持元字符通配符：

* ?代表一個字符
* *代表任意個數（包含0個）字符
* [az]匹配a和z
* [a-z]匹配a至z
* [!a]匹配除a以外字符

### inode

不同文件的inode編號不同。

如：符號鏈接創建的文件為獨立文件，inode編號與原文件不同；而硬鏈接只是引用了原文件，不會創建新的inode編號，本質上是同一文件。

只能在同一存儲媒體上建立硬鏈接，跨越存儲媒體的鏈接只能是符號鏈接。

使用cp複製鏈接文件會得到原文件的一個副本。

警告：不要創建符號鏈接的符號鏈接，易造成鏈接鏈斷裂和其他麻煩。



## 軟件包

| Command | Description | Arguments |
| ------- | ----------- | --------- |
| tree    | 展示目錄    |           |

