# ShellCommand
small dictionary of Linux shell command



## 常用命令列表

| Command | Description              | Arguments                                                    |
| ------- | ------------------------ | ------------------------------------------------------------ |
| man     | 手冊頁面                 | -k 關鍵字搜索<br/>1 可執行程序/shell命令<br/>2 系統調用<br/>3 庫調用<br/>4 特殊文件<br/>5 文件格式與約定<br/>6 遊戲<br/>7 概覽、約定、雜項<br/>8 super user和system administer命令<br/>9 內核例程 |
| info    | 手冊頁面                 |                                                              |
| help    | 幫助信息                 |                                                              |
| cd      | 切換目錄                 | [空] 切換至主目錄<br/>~ 切換至主目錄<br/>. 當前目錄<br/>.. 父目錄 |
| pwd     | 顯示當前目錄             |                                                              |
| ls      | 列表命令                 | -F 明確指示類型<br/>-R 遞歸選項<br/>-a 顯示全部文件<br/>-l 顯示[長列表](#長列表)<br/>-i 查看文件inode信息<br/>-d 只列出目錄本身信息忽略內容<br/>[過濾器](#過濾器)<br/>--time=atime 顯示訪問時間 |
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

文件類型：目錄d，文件-，字符型文件c，塊設備b等（詳見[文件權限](#文件權限)）

文件權限：讀r寫w執行x，owner/group/others（詳見[文件權限](#文件權限)）

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



## 安全性

### 用戶：

/etc/passwd

* 登錄用戶名
* 密碼(x)
* UID
* GID
* 備註
* HOME位置
* 默認shell

/etc/shadow

* 與passwd中對應的登錄名
* 加密後的密碼
* 上一次修改密碼的日期
* 一次修改後多少天後才能更改密碼
* 一次修改後多少天後必須更改密碼
* 密碼過期前多少天提醒用戶更改密碼
* 密碼過期後多少天禁用用戶
* 用戶被禁用的日期（1970-01-01至該日的天數）
* 預留字段

| Command  | Description          | Arguments                                                    |
| -------- | -------------------- | ------------------------------------------------------------ |
| useradd  | 添加用戶             | 備註：創建用戶及設置用戶HOME目錄結構（默認不創建HOME）（需root權限）<br/>備註：UID的500之前預留給系統<br/>警告：若useradd在/usr/sbin中且該目錄不在PATH中，無法直接訪問useradd<br/>[默認值](#useradd默認值)：/etc/default/useradd<br/>-D 查看默認值<br/>-c *comment* 為用戶添加備註<br/>-d *home_dir* 為主目錄指定名稱<br/>-e *expire_date* 指定過期日期(YYYY-MM-DD)<br/>-f *inactive_days* 指定帳戶密碼過期後多少天後被禁用(0為立即禁用，-1為永不禁用)<br/>-g *initial_group* 指定登錄組GID或組名<br/>-G *group ···* 指定附加組<br/>-k 與-m一起使用，複製/etc/skel內容至HOME<br/>-m 創建用戶HOME目錄<br/>-M 不創建用戶HOME目錄<br/>-n 創建一個與用戶登錄名相同的新組<br/>-r 創建系統帳戶<br/>-p *password* 為用戶指定默認密碼<br/>-s *shell* 為用戶指定默認登錄shell<br/>-u uid 為用戶指定唯一UID |
| userdel  | 刪除用戶             | 警告：默認userdel只刪除/etc/passwd中的配置，不刪除用戶文件<br/>-r 刪除用戶HOME及郵件目錄 |
| usermod  | 修改用戶帳戶字段     | 參數與useradd大致相同<br/>-l 修改用戶帳戶的登錄名<br/>-L 鎖定帳戶（使其不能登錄）<br/>-p 修改帳戶的密碼<br/>-U 解除鎖定 |
| passwd   | 修改用戶密碼         | passwd *username* 修改username的密碼<br/>passwd 修改自己的密碼<br/>備註：root有權限修改其他帳戶密碼，其餘帳戶只能修改自身密碼<br/>-e 強制用戶下次登錄時修改密碼 |
| chpasswd | 使用文件修改用戶密碼 | chpasswd < users.txt<br/>從users.txt中讀取userid:passwd字段修改密碼 |
| chage    | 修改密碼過期日期     | -d 設置上次修改密碼到現在的天數<br/>-E 設置密碼過期的日期<br/>-I 設置密碼過期到鎖定帳戶的天數<br/>-m 設置修改密碼之間至少需要的天數<br/>-W 設置密碼過期前多久開始出現提示信息<br/>日期值的格式：<br/>YYYY-MM-DD<br/>1970-01-01到該日的天數 |
| chfn     | 修改備註             | 將finger提供的信息存入備註<br/>chfn *username* 詢問並修改備註 |
| chsh     | 修改默認登錄shell    | 警告：必須使用shell的全路徑名<br/>chsh -s /bin/csh username  |
| finger   | 查看用戶信息         | 警告：該命令可能被禁用或沒有安裝<br/>finger *username*       |

### 組：

/etc/group

* 組名
* 組密碼（允許非組成員通過組密碼臨時成為該組成員）
* GID
* 屬於該組的用戶列表

備註：添加用戶到組之前先創建組

警告：不能直接修改group來把用戶添加到組，應使用usermod命令

警告：用戶在/etc/passwd中指定了默認組後，不會出現在/etc/group的用戶列表中


| Command  | Description | Arguments                                                    |
| -------- | ----------- | ------------------------------------------------------------ |
| groupadd | 添加組      | groupadd *groupname*<br/>備註：創建新組後沒有用戶被添加，使用usermod添加用戶到組：<br/>usermod -G *groupname* *username*<br/>備註：更改用戶所屬組後用戶必須重新登錄才能生效<br/>警告：分配組時使用-g會替換掉該用戶的默認組，-G則會把用戶添加到組的用戶列表中不影響默認組 |
| groupmod | 修改組      | -g 修改GID<br/>-n 修改組名<br/>groupmod -n *newname* *oldname*<br/>備註：修改組名不影響文件安全性 |

### 文件權限：

`ls -l`所顯示的第一個字段即描述文件目錄權限的編碼：

* 第一個字符：（定義類型）
  * -文件
  * d目錄
  * l鏈接
  * c字符型設備
  * b塊設備
  * n網絡設備
* 之後的三組三字符編碼：（分別定義屬主/屬組/其他用戶的三種權限）
  * r可讀
  * w可寫
  * x可執行
  * -無相應位置的權限

| Command | Description  | Arguments                                                    |
| ------- | ------------ | ------------------------------------------------------------ |
| umask   | 設置默認權限 | [默認文件權限](#默認文件權限)<br/>警告：umask設置的是權限的**掩碼** |
| chmod   |              |                                                              |
| chown   |              |                                                              |
| chgrp   |              |                                                              |

### useradd默認值

用戶被添加到的GID

用戶的HOME目錄

用戶帳戶密碼過期後不會被禁用

用戶帳戶無國過期日期

使用bash作為用戶默認shell

將/etc/skel中的內容複製到用戶HOME目錄中

為用戶在mail目錄下創建用於接收郵件的文件

修改默認值：（在-D後添加下列參數）

* -b *default_home* 更改默認的HOME目錄位置
* -e *expiration_date* 更改默認帳戶過期日期
* -f *inactive* 更改默認帳戶密碼過期至用戶被禁用之間的天數
* -g *group* 更改用戶默認的GID或組名稱
* -s *shell* 更改用戶默認的shell

### 默認文件權限

// TODO



## 軟件包

| Command | Description | Arguments |
| ------- | ----------- | --------- |
| tree    | 展示目錄    |           |

