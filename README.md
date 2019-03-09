# ShellCommand
small dictionary of Linux shell command



## 常用命令列表

| Command  | Description              | Arguments                                                    |
| -------- | ------------------------ | ------------------------------------------------------------ |
| man      | 手冊頁面                 | -k 關鍵字搜索<br/>1 可執行程序/shell命令<br/>2 系統調用<br/>3 庫調用<br/>4 特殊文件<br/>5 文件格式與約定<br/>6 遊戲<br/>7 概覽、約定、雜項<br/>8 super user和system administer命令<br/>9 內核例程 |
| info     | 手冊頁面                 |                                                              |
| help     | 幫助信息                 |                                                              |
| cd       | 切換目錄                 | [空] 切換至主目錄<br/>~ 切換至主目錄<br/>. 當前目錄<br/>.. 父目錄 |
| pwd      | 顯示當前目錄             |                                                              |
| ls       | 列表命令                 | -F 明確指示類型<br/>-R 遞歸選項<br/>-a 顯示全部文件<br/>-l 顯示[長列表](#長列表)<br/>-i 查看文件inode信息<br/>-d 只列出目錄本身信息忽略內容<br/>[過濾器](#過濾器)<br/>--time=atime 顯示訪問時間 |
| touch    | 創建文件                 | 備註：owner為創建者，文件大小為0                             |
|          | 改變文件時間屬性         | 備註：不改變文件內容但更新修改時間<br/>-a 改變文件訪問時間   |
| cp       | 複製文件                 | -i 詢問操作<br/>-R 遞歸操作<br/>備註：可以使用通配符<br/>警告：目錄的結尾不要忘記/符號 |
| ln       | 鏈接文件                 | [空] 創建硬鏈接<br/>-s 創建符號鏈接<br/>[inode](#inode)      |
| mv       | 移動/重命名              | -i 詢問操作<br/>備註：可以操作文件&目錄                      |
| rm       | 移除文件                 | -i 詢問操作<br/>-f 強制刪除<br/>備註：可以使用通配符<br/>-r/-R 刪除目錄中的文件及目錄本身 |
| mkdir    | 創建目錄                 | -p 同時創建多個目錄及子目錄                                  |
| rmdir    | 移除目錄                 | 備註：默認只能移除空目錄                                     |
| file     | 查看文件類型             | 備註：確定文件類型/編碼信息/鏈接原文件/編譯時面向的平台/需要的庫類型 |
| cat      | 查看文件                 | -n 顯示加入行號<br/>-b 只顯示非空行行號<br/>-T 不顯示水平制表符（用^I代替） |
| more     | 顯示文件                 | 空格鍵：逐頁顯示<br/>回車鍵：逐行顯示                        |
| less     | 分頁工具                 | 支持more的全部操作，且支持上下鍵及上下翻頁鍵                 |
| tail     | 顯示文件尾部             | 默認顯示文件最後10行內容<br/>-n [number] 顯示文件最後number行<br/>-[number] 上面的簡寫<br/>-f 活動監視狀態 |
| head     | 顯示文件頭部             | 默認顯示文件開頭10行內容<br/>-n [number] 顯示文件開頭number行<br/>-[number] 上面的簡寫<br/>警告：head不支持-f特性 |
| ps       | 監測進程                 | [ps](#ps)<br/>常用參數：<br/>-e 顯示所有進程（UNIX）<br/>-f 擴展輸出（UNIX）<br/>-l 長列表輸出（UNIX）<br/>l 採用長模式（BSD）<br/>--forest 顯示進程樹（GNU） |
| top      | 實時監測                 | [top](#top)<br/>f 選擇對輸出進行排序的字段<br/>d 修改輪訊間隔<br/>q 退出 |
| kill     | 發送信號                 | [Linux進程信號](#Linux進程信號)<br/>備註：必須為進程屬主或root，只接受PID，默認發送TERM信號<br/>-s [SIGNAL] 發送信號[SIGNAL] |
| killall  | 終止進程                 | 備註：支持接受進程名稱，支持通配符<br/>警告：root用戶慎用通配符 |
| mount    | 掛載存儲媒體             | [空] 輸出當前系統掛載的設備列表：媒體設備文件名on掛載點type文件系統類型(訪問狀態)<br/>警告：手動掛載需要root權限<br/>[mount](#mount) |
| umount   | 卸載設備                 | umount [directory \| device]<br/>警告：卸載時確保沒有程序正在使用媒體 |
| df       | 磁盤使用情況查詢         | -h 用戶友好的方式顯示（顯示M/G等）<br/>命令輸出：（不使用-h參數）<br/>設備的設備文件位置<br/>能容納1024字節大小的塊的數量<br/>已用1024字節大小的塊的數量<br/>已用空間所佔比例<br/>掛載點 |
| du       | 特定目錄磁盤使用情況查詢 | 默認情況下顯示當前目錄所有文件/目錄/子目錄的磁盤使用情況（磁盤塊為單位）<br/>-c 顯示所有已列出文件的總大小<br/>-h 用戶友好的方式顯示<br/>-s 顯示每個輸出參數的總計 |
| lsof     | 查看占用磁盤進程         | lsof path/to/device/node<br/>lsof path/to/mount/point        |
| readlink | 查找鏈接文件             | -f 找到鏈接文件的頂端                                        |
| wc       | 文本計數                 | 對輸入的文本進行計數<br/>wc < test.txt<br/>輸出：<br/>文本的行數<br/>文本的詞數<br/>文本的字節數 |

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

| Command | Description         | Arguments                                                    |
| ------- | ------------------- | ------------------------------------------------------------ |
| umask   | 設置默認權限        | [默認文件權限](#默認文件權限)<br/>警告：umask設置的是權限的**掩碼** |
| chmod   | 改變權限            | chmod *options mode file*<br/>mode參數：<br/>八進制模式：直接使用三位文件權限碼<br/>符號模式：[ugoa…] [[+-=] [rwxXstugo...]]<br/>第一組字符（權限作用對象）：<br/>u 用戶<br/>g 組<br/>o 其他用戶<br/>a 所有（ugo）<br/>第二組字符：<br/>+ 增加權限<br/>- 移除權限<br/>= 設置成後面的權限<br/>第三組字符（要設置的權限）：<br/>r 可讀<br/>w 可寫<br/>x 可執行<br/>X 對象為目錄/它已有x權限則賦予x權限<br/>s 運行時重新設置UID或GID<br/>t 保留文件或目錄<br/>u 將權限設置為和屬主相同<br/>g 將權限設置為和屬組相同<br/>o 將權限設置為和其他用戶相同<br/><br/>options參數：<br/>-R 遞歸作用於文件和子目錄 |
| chown   | 改變屬主(和/或屬組) | chown *options owner[.group] file*<br/>警告：只有root可以改變屬主，任何屬主都可以改變文件的屬組（當屬主為原屬組和目標屬組成員時）<br/>owner字段可以使用UID或登錄名<br/>owner.group 可以同時改變屬主和屬組<br/>.group 只改變屬組<br/>owner. 在登錄名與組名相同時可以這樣簡寫<br/><br/>options參數：<br/>-R 遞歸改變子目錄和文件的屬主/屬組 |
| chgrp   | 改變屬組            | chgrp *group file*<br/>警告：用戶帳戶必須是該文件的屬主，新組的成員 |

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

直接使用`umask`命令可以顯示默認權限：

* 第一位：SUID/SGID/sticky bit黏著位組成的八進制數字
* 後三位：文件權限碼的掩碼

默認權限：全權限（文件666，目錄777）減去umask返回的後三位掩碼

umask的值通常會設置在/etc/profile或/etc/login.defs（ubuntu）中

使用`umask 文件權限碼的掩碼` 來設置默認權限

### 共享文件

Linux通過創建組來共享文件。

Linux為每個文件/目錄存儲了三個額外信息位：

* SUID（設置用戶ID）：當文件被用戶使用時，程序以文件屬主的權限運行；
* SGID（設置組ID）：文件以文件屬組權限運行，目錄中創建的新文件以目錄的默認屬組作為默認屬組；
* sticky bit（黏著位）：進程結束後文件還駐留在內存中。

啟用SGID可以強制在共享目錄下創建的新文件都屬於該目錄的屬組，該組成為每個用戶的屬組。

可以通過chmod設置：

* 把[SUID/SGID/sticky bit]加到三位文件權限碼之前；
* 符號模式下使用s

創建共享目錄的方法：

* mkdir創建一個新目錄，chgrp該目錄為包含所有需要共享文件的用戶的組（確保自身為該組成員）
* chmod g+s該目錄保證目錄下新創建的文件的屬組均為共享組
* 所有組員設置umask為文件對屬組成員可寫（如：002）
* 在目錄下創建共享的文件



## 文件系統

### 交互式分區管理程序fdisk

fdisk */dev/devname*

需要root權限

Linux設備名稱：

* IDE驅動器：/dev/hdx
* SATA驅動器&SCSI驅動器：/dev/sdx

備註：x為一個字母，驅動器的檢測順序第一個為a，第二個為b，以此類推

警告：格式化分區之前必須確保指定了正確的驅動器

備註：第一次給驅動器分區fdisk會警告設備上沒有分區表

fdisk交互式命令提示符可用命令列表：

| Command | Description                      |
| ------- | -------------------------------- |
| a       | 設置活動分區標誌                 |
| b       | 編輯BSD UNIX系統的磁盤標籤       |
| c       | 設置DOS兼容標誌                  |
| d       | 刪除分區                         |
| l       | 顯示可用的分區類型               |
| m       | 顯示命令選項（help）             |
| n       | 添加一個新分區                   |
| o       | 創建DOS分區表                    |
| p       | 顯示當前分區表                   |
| q       | 退出，不保存更改                 |
| s       | 為SUN UNIX系統創建一個新磁盤標籤 |
| t       | 修改分區的系統ID（分區類型）     |
| u       | 改變使用的存儲單位               |
| v       | 驗證分區表                       |
| w       | 將分區表寫入磁盤                 |
| x       | 高級功能                         |

基本命令解釋：

p命令：顯示存儲設備的詳細信息（大小，分區等）。

n命令：按照主分區（primary partition，p）或擴展分區（extended partition，e）創建分區。主分區可以直接被格式化，擴展分區只能容納其他邏輯分區。每個存儲設備只能有4個分區，通過創建擴展分區，在其內部創建邏輯分區進行擴展。

l命令：默認分區類型為83（Linux文件系統），可以更改為其他。

w命令：保存更改。

q命令：直接退出。

Linux通過`ioctl()`調用來獲取新分區的出現。設置好分區後可以將其格式化。

警告：某些發行版生成新分區後不會提醒Linux系統，需要使用`partprob`或者`hdparm`命令或者重啓系統來更新系統的分區表。

### 創建文件系統

| Tools      | Use                      |
| ---------- | ------------------------ |
| mkefs      | 創建一個ext文件系統      |
| mke2fs     | 創建一個ext2文件系統     |
| mkfs.ext3  | 創建一個ext3文件系統     |
| mkfs.ext4  | 創建一個ext4文件系統     |
| mkreiserfs | 創建一個ReiserFS文件系統 |
| jfs_mkfs   | 創建一個JFS文件系統      |
| mkfs.xfs   | 創建一個XFS文件系統      |
| mkfs.zfs   | 創建一個ZFS文件系統      |
| mkfs.btrfs | 創建一個Btrfs文件系統    |

通過不帶選項的簡單命令創建一個默認的文件系統：

`mkfs.ext4 /dev/sdb1`，需要root權限

可以將新的文件系統掛載到虛擬目錄的任何地方：

```
mkdir /mnt/my_partition
mount -t ext4 /dev/sdb1 /mnt/my_partition
```

重啓系統後文件系統不會自動掛載。

強制Linux在啟動時自動掛載新的文件系統，將其寫入/etc/fstab中。

### 檢查與修復工具fsck

fsck能夠檢測修復ext～ext4、ReiserFS、JFS、XFS等文件系統。

fsck *options filesystem*

filesystem可以包含多個要檢查的文件系統，通過設備名/掛載點/系統分配給文件系統的唯一UUID來引用。

fsck通過/etc/fstab來決定存儲設備的文件系統，或通過-t參數來指定。

| Arguments | Description                                        |
| --------- | -------------------------------------------------- |
| -a        | 如果有錯誤，自動修復                               |
| -A        | 檢查/etc/fstab列出的所有文件系統                   |
| -C        | 給支持進度條功能的文件系統顯示進度條（ext2、ext3） |
| -N        | 不進行檢查，只顯示哪些檢查會執行                   |
| -r        | 出現錯誤時提示                                     |
| -R        | 使用-A時，跳過根文件系統                           |
| -s        | 檢查多個文件系統時依次進行檢查                     |
| -t        | 指定要檢查的文件系統類型                           |
| -T        | 啟動時不顯示頭部信息                               |
| -V        | 檢查時顯示詳細輸出                                 |
| -y        | 檢測到錯誤時自動修復文件系統                       |

警告：fsck只能夠在未掛載的文件系統上運行。若要檢查根文件系統需要使用Linux LiveCD或其他手段（運行的系統的根文件系統不能卸載）

### 邏輯卷管理

#### 1、定義物理卷

使用fdisk的t命令將Linux分區轉換為Linux LVM分區（8e）

#### 2、安裝lvm2軟件包

#### 3、用分區創建PV（物理卷）

pvcreate */dev/sdb1*

使用pvdisplay */dev/sdb1*來查看已創建的PV列表

#### 4、創建VG（卷組）

vgcreate *VGNAME /dev/sdb1*（如：vgcreate Vol1 /dev/sdb1）

使用vgdisplay *VGNAME*（如：vgdisplay Vol1）來查看卷組信息

#### 5、創建LV（邏輯卷）

lvcreate選項：

| Arguments | Arguments    | Description                                                  |
| --------- | ------------ | ------------------------------------------------------------ |
| -c        | --chunksize  | 指定快照邏輯卷的單位大小                                     |
| -C        | --contiguous | 設置或重置連續分配策略                                       |
| -i        | --stripes    | 指定條帶數                                                   |
| -I        | --stripesize | 指定每個條帶大小                                             |
| -l        | --extents    | 指定分配給新邏輯卷的邏輯區段數，或者要用的邏輯區段的百分比<br/>如：-l 100%FREE |
| -L        | --size       | 指定分配給新邏輯卷的硬盤大小<br/>如：-L xKB/MB/GB            |
|           | --minor      | 指定設備的次設備號                                           |
| -m        | --mirrors    | 創建邏輯卷鏡像                                               |
| -M        | --persistent | 讓次設備號一直有效                                           |
| -n        | --name       | 指定新邏輯卷名稱<br/>-n lvname                               |
| -p        | --permission | 為邏輯卷設置r/w權限                                          |
| -r        | --readahead  | 設置預讀扇區數                                               |
| -R        | --regionsize | 指定將鏡像分成多大的區                                       |
| -s        | snapshot     | 創建快照邏輯卷                                               |
| -z        | --zero       | 將新邏輯卷的前1KB設置為0                                     |

如：lvcreate -l 100%FREE -n lvtest Vol1

使用lvdisplay（如：lvdisplay Vol1）查看邏輯卷詳細情況

#### 6、創建文件系統

如：mkfs.ext4 /dev/Vol1/lvtest

#### 7、裝載

注意裝載的路徑：

如：mount /dev/Vol1/lvtest /mnt/my_partition

#### *8、修改LVM

| Commands | Functions      |
| -------- | -------------- |
| vgchange | 激活和禁用VG   |
| vgremove | 刪除VG         |
| vgextend | 將PV加入到VG中 |
| vgreduce | 從VG中刪除PV   |
| lvextend | 增加LV大小     |
| lvreduce | 減小LV大小     |

警告：手動增減LV大小需要特別小心。LV中的文件系統需要手動修整來處理大小改變。如ext2～ext4文件系統使用resize2fs程序來格式化文件系統。



## 軟件包

| Command | Description | Arguments |
| ------- | ----------- | --------- |
| tree    | 展示目錄    |           |



## 基本腳本

[base script](./base.sh)

### 輸入輸出重定向

command > outputfile 輸出重定向（覆蓋文件）

command >> outputfile 輸出重定向（添加）

command < inputfile 輸入重定向

command << marker 內聯輸入重定向：PS2提示輸入，直到最後一行鍵入marker

### 管道

command1 | command2 將command1的輸出作為command2的輸入

一條命令管道可以使用多個管道：ls /etc/ | sort | more

可以配合重定向：ls /etc/ | sort > etc.list

### 數學運算

expr表達式：expr *operator*

| Operator                 | Description                                          |
| ------------------------ | ---------------------------------------------------- |
| ARG1 \| ARG2             | 若ARG1不是null也不是0，返回ARG1，否則返回ARG2        |
| ARG1 & ARG2              | 沒有參數為null或0，返回ARG1，否則返回0               |
| ARG1 < ARG2              | 真返回1，假返回0                                     |
| ARG1 <= ARG2             | 真返回1，假返回0                                     |
| ARG1 = ARG2              | 真返回1，假返回0                                     |
| ARG1 != ARG2             | 真返回1，假返回0                                     |
| ARG1 >= ARG2             | 真返回1，假返回0                                     |
| ARG1 > ARG2              | 真返回1，假返回0                                     |
| ARG1 + ARG2              | 返回算術和                                           |
| ARG1 - ARG2              | 返回算數差                                           |
| ARG1 * ARG2              | 返回算術積                                           |
| ARG1 / ARG2              | 返回算術商                                           |
| ARG1 % ARG2              | 返回模                                               |
| STRING : REGEXP          | 如果REGEXP匹配到了STRING中的某個模式，返回該模式匹配 |
| match STRING REGEXP      | 如果REGEXP匹配到了STRING中的某個模式，返回該模式匹配 |
| substr STRING POS LENGTH | 返回POS開始長度LENGTH的子串                          |
| index STRING CHARS       | 返回STRING中CHARS字符串的位置，否則返回0             |
| Length STRING            | 返回STRING長度                                       |
| + TOKEN                  | 將TOKEN解釋為字符串，即使是個關鍵字                  |
| (EXPRESSION)             | 返回EXPRESSION的值                                   |

警告：某些操作符（如*）在shell中另有含義，需要轉義：

* expr 5 * 2 # ERROR
* expr 5 \\* 2

bash保留了Bourne Shell中的expr命令，又兼容方括號表達式（$[operation]）

方括號表達式不需要轉義*等操作符

bash只支持整數運算

zsh可以用於浮點數運算

#### 浮點數運算

使用bash內建計算器bc：

bash計算器是一種編程語言，能夠識別：

* 數字（整數/浮點數）
* 變量（簡單變量/數組）
* 注釋（#或/**/）
* 表達式
* 編程語句
* 函數

直接鍵入bc打開計算器，鍵入quit退出bc。

bc -q可以忽略歡迎信息。

浮點運算由內建變量scale控制其保留小數位的個數，scale默認值為0。

print可以用來打印變量和數字。

在腳本中使用bc的基本格式：

```shell
variable=$(echo "options; expression" | bc)
```

使用重定向：

```shell
variable=$(bc << EOF
options
statements
expressions
EOF
)
```

### 退出

退出狀態碼：存儲在專門變量`$?`中，表示上一個已執行的命令的退出碼。

| Status Code | Description                  |
| ----------- | ---------------------------- |
| 0           | 命令成功結束                 |
| 1           | 一般性未知錯誤（參數錯誤等） |
| 2           | 不適合的shell命令            |
| 126         | 命令不可執行                 |
| 127         | 沒找到命令                   |
| 128         | 無效的退出參數               |
| 128+x       | 與Linux信號x相關的嚴重錯誤   |
| 130         | 通過Crtl+C終止的命令         |
| 255         | 正常範圍之外的退出狀態碼     |

默認情況下shell腳本以腳本最後一個命令的退出狀態碼退出。

可以使用exit指定退出狀態碼。

exit後可跟數字或變量，當大於最大數字255時，取模。

## 結構化命令

[structured command](./structured_cmd.sh)

### if-then

```shell
# 1
if command
then
    commands
fi
# 2
if command; then
    commands
fi
```

if後面的命令運行成功（退出狀態碼為0）則運行then部分的命令被執行。

### if-then-else

```shell
if command
then
    commands
else
    commands
fi
```

### else-if

```shell
if command1
then
    command_set1
elif command2
then
    command_set2
else
    command_set3
fi
```

### test

```shell
test condition
```

condition為真，test的退出狀態碼為0；反之為非0。

如果test沒有condition部分，以非0狀態退出。

```shell
# 進行測試
if [ condition ]
then
    commands
fi
```

警告：中括號內部的前後必須有空格。

test可以判斷的三類條件：

* 數值比較
* 字符串比較
* 文件比較

#### 數值比較

| Compare    | Description |
| ---------- | ----------- |
| n1 -eq  n2 | 相等        |
| n1 -ge  n2 | 大於等於    |
| n1 -gt  n2 | 大於        |
| n1 -le  n2 | 小於等於    |
| n1 -lt  n2 | 小於        |
| n1 -ne  n2 | 不等於      |

警告：不能比較浮點數。

#### 字符串比較

| Compare       | Description                                    |
| ------------- | ---------------------------------------------- |
| str1  = str2  | 相等                                           |
| str1 !=  str2 | 不相等                                         |
| str1 <  str2  | 小於<br/>警告：<需要轉義，否則是重定向，即`\<` |
| str1 >  str2  | 大於<br/>警告：>需要轉義，否則是重定向，即`\>` |
| -n str        | 長度非0                                        |
| -z str        | 長度為0<br/>沒有定義過的變量長度也為0          |

比較規則同C++語言字符串比較。[cpp比較字符串](./cmp_str.cpp)

警告：sort命令的排序不是按照ASCII碼進行排序，小寫字母會排在大寫字母前方。sort的排序結果和本地化語言定義的排序規則相關。

警告：不要使用數學符號比較數字。

#### 文件比較

| Compare         | Description                            |
| --------------- | -------------------------------------- |
| -d file         | 檢查file是否存在並是一個目錄           |
| -e file         | 檢查file是否存在                       |
| -f file         | 檢查file是否存在並是一個文件           |
| -r file         | 檢查file是否存在並可讀                 |
| -s file         | 檢查file是否存在並非空                 |
| -w file         | 檢查file是否存在並可寫                 |
| -x file         | 檢查file是否存在並可執行               |
| -O file         | 檢查file是否存在並屬當前用戶所有       |
| -G file         | 檢查file是否存在並默認組與當前用戶相同 |
| file1 -nt file2 | 檢查file1是否比file2新                 |
| file1 -ot file2 | 檢查file1是否比file2舊                 |

### 復合條件測試

```shell
[ condition1 ] && [ condition2 ] # AND
[ condition1 ] || [ condition2 ] # OR
```

### if-then高級特性

高級特性：

* 用於數學表達式的雙括號
* 用於高級字符串處理的雙方括號

#### 雙括號

允許在比較過程中使用高級數學表達式

```shell
(( expression ))
```

expression可以是任意數學賦值或比較表達式，可以使用test命令使用的標準數學運算符和下列運算符：

| Expression | Description |
| ---------- | ----------- |
| val++      | 後增        |
| val--      | 後減        |
| ++val      | 先增        |
| --val      | 先減        |
| !          | 邏輯求反    |
| ~          | 按位求反    |
| **         | 求幂        |
| <<         | 左位移      |
| \>>        | 右位移      |
| &          | 按位AND     |
| \|         | 按位OR      |
| &&         | 邏輯AND     |
| \|\|       | 邏輯OR      |

注意：雙括號中的表達式中的大於號不需要轉義

#### 雙方括號

注意：不是所有的shell都支持雙方括號

```shell
[[ expression ]]
```

雙方括號表達式支持test命令中的標準字符串比較，也提供了對匹配模式（正則表達式）的支持

使用`==`將右側字符串視為模式對左側字符串應用匹配規則

### case命令

```shell
case variable in
pattern1 | pattern2) commands1;;
pattern3) commands2;;
*) default commands;;
esac
```

將variable與指定模式進行比較，匹配的執行響應命令。

### for命令

```shell
# 1
for var in list
do
    commands
done
# 2
for var in list; do
    commands
done
```

#### 直接定義list

// TODO

#### 從變量定義list

// TODO

#### 從命令定義list

// TODO

