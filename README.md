# ShellCommand
small dictionary of Linux shell command



## 命令列表

| Command | Description              | Arguments                                                    |
| ------- | ------------------------ | ------------------------------------------------------------ |
| man     | 手冊頁面                 | -k 關鍵字搜索<br/>1 可執行程序/shell命令<br/>2 系統調用<br/>3 庫調用<br/>4 特殊文件<br/>5 文件格式與約定<br/>6 遊戲<br/>7 概覽、約定、雜項<br/>8 super user和system administer命令<br/>9 內核例程 |
| info    | 手冊頁面                 |                                                              |
| help    | 幫助信息                 |                                                              |
| cd      | 切換目錄                 | [空] 切換至主目錄<br/>~ 切換至主目錄<br/>. 當前目錄<br/>.. 父目錄 |
| pwd     | 顯示當前目錄             |                                                              |
| ls      | 列表命令                 | -F 明確指示類型<br/>-R 遞歸選項<br/>-a 顯示全部文件<br/>-l 顯示[長列表](#長列表)<br/>-i 查看文件inode信息<br/>-d 只列出目錄本身信息忽略內容<br/>[過濾器](#過濾器)<br/>--time=atime 顯示訪問時間 |
| chmod   | 更改權限                 |                                                              |
| chown   | 更改owner                |                                                              |
| touch   | 創建文件                 | 備註：owner為創建者，文件大小為0                             |
|         | 改變文件時間屬性         | 備註：不改變文件內容但更新修改時間<br/>-a 改變文件訪問時間   |
| cp      | 複製文件                 | -i 詢問操作<br/>-R 遞歸操作<br/>備註：可以使用通配符<br/>警告：目錄的結尾不要忘記/符號 |
| ln      | 鏈接文件                 | [空] 創建硬鏈接<br/>-s 創建符號鏈接<br/>[inode](#inode)      |
| mv      | 移動/重命名              | -i 詢問操作<br/>備註：可以操作文件&目錄                      |
| rm      | 移除文件                 | -i 詢問操作<br/>-f 強制刪除<br/>備註：可以使用通配符<br/>-r/-R 刪除目錄中的文件及目錄本身 |
| mkdir   | 創建目錄                 | -p 同時創建多個目錄及子目錄                                  |
| rmdir   | 移除目錄                 | 備註：默認只能移除空目錄                                     |
| file    | 查看文件類型             | 備註：確定文件類型/編碼信息/鏈接原文件/編譯時面向的平台/需要的庫類型 |
| cat     | 查看文件                 | -n 顯示加入行號<br/>-b 只顯示非空行行號<br/>-T 不顯示水平制表符（用^I代替） |
| more    | 顯示文件                 | 空格鍵：逐頁顯示<br/>回車鍵：逐行顯示                        |
| less    | 分頁工具                 | 支持more的全部操作，且支持上下鍵及上下翻頁鍵                 |
| tail    | 顯示文件尾部             | 默認顯示文件最後10行內容<br/>-n [number] 顯示文件最後number行<br/>-[number] 上面的簡寫<br/>-f 活動監視狀態 |
| head    | 顯示文件頭部             | 默認顯示文件開頭10行內容<br/>-n [number] 顯示文件開頭number行<br/>-[number] 上面的簡寫<br/>警告：head不支持-f特性 |
| ps      | 監測進程                 | [ps](#ps)<br/>常用參數：<br/>-e 顯示所有進程（UNIX）<br/>-f 擴展輸出（UNIX）<br/>-l 長列表輸出（UNIX）<br/>l 採用長模式（BSD）<br/>--forest 顯示進程樹（GNU） |
| top     | 實時監測                 | [top](#top)<br/>f 選擇對輸出進行排序的字段<br/>d 修改輪訊間隔<br/>q 退出 |
| kill    | 發送信號                 | [Linux進程信號](#Linux進程信號)<br/>備註：必須為進程屬主或root，只接受PID，默認發送TERM信號<br/>-s [SIGNAL] 發送信號[SIGNAL] |
| killall | 終止進程                 | 備註：支持接受進程名稱，支持通配符<br/>警告：root用戶慎用通配符 |
| mount   | 掛載存儲媒體             | [空] 輸出當前系統掛載的設備列表：媒體設備文件名on掛載點type文件系統類型(訪問狀態)<br/>警告：手動掛載需要root權限<br/>[mount](#mount) |
| umount  | 卸載設備                 | umount [directory \| device]<br/>警告：卸載時確保沒有程序正在使用媒體 |
| df      | 磁盤使用情況查詢         | -h 用戶友好的方式顯示（顯示M/G等）<br/>命令輸出：（不使用-h參數）<br/>設備的設備文件位置<br/>能容納1024字節大小的塊的數量<br/>已用1024字節大小的塊的數量<br/>已用空間所佔比例<br/>掛載點 |
| du      | 特定目錄磁盤使用情況查詢 | 默認情況下顯示當前目錄所有文件/目錄/子目錄的磁盤使用情況（磁盤塊為單位）<br/>-c 顯示所有已列出文件的總大小<br/>-h 用戶友好的方式顯示<br/>-s 顯示每個輸出參數的總計 |
| lsof    | 查看占用磁盤進程         | lsof path/to/device/node<br/>lsof path/to/mount/point        |

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

### ps

// TODO

### top

// TODO

### Linux進程信號

| Signal | Name | Description                |
| ------ | ---- | -------------------------- |
| 1      | HUP  | 掛起                       |
| 2      | INT  | 中斷                       |
| 3      | QUIT | 結束運行                   |
| 9      | KILL | 無條件終止                 |
| 11     | SEGV | 段錯誤                     |
| 15     | TERM | 盡可能終止                 |
| 17     | STOP | 無條件停止運行，不終止     |
| 18     | TSTP | 停止或暫停，繼續在後台運行 |
| 19     | CONT | 在STOP或TSTP後恢復執行     |

### mount

掛載媒體設備：mount -t type device directory

type：vfat（Windows長文件系統）/ntfs/iso9660（CD-ROM）

device：設備文件的位置

directory：掛載點

例：mount -t vfat /dev/sdb1 /media/disk

參數列表：

// TODO



## 軟件包

| Command | Description | Arguments |
| ------- | ----------- | --------- |
| tree    | 展示目錄    |           |

