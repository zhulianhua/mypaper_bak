mypaper_bak
===========


说明
----
HUST 本科毕业论文LaTeX论文模板

使用方法
--------
使用XeLaTeX+xeCJK宏包处理中文。 编译过程见Makefile。

Texlive 2012 编译通过。

Linux系统编译字体需求
---------------------
本论文中文使用了Windows上的SimSun(宋体)、SimHei(黑体) 、KaiTi(楷体)和FangSong(仿宋)四种中文字体。
如果要在Linux下编译，需要把这些字体文件从Windows系统的Fonts目录放到Linux系统的用户字体
目录下(`~/.fonts/`)

首先查看Linux系统已安装的中文字体:
    
    $ fc-list :lang=zh


如果没有上述四种字体,就从Windows系统拷贝这四个字体文件到`~/.fonts/`下面，这四个字体文件在WIndows系统
上的位置通常是：

    C:\Winsows\Fonts\simsun.ttc
    C:\Winsows\Fonts\simhei.ttf
    C:\Winsows\Fonts\simkai.ttf
    C:\Winsows\Fonts\STFANGSO.TTF

**注意** 如果打开Windows的Fonts目录时，不会显示文件名，只显示字体名字，右键字体，查看属性可以看到字体
    *文件名*(即`simsun.ttc`...)。

拷贝完后,更新Linux系统上的字体cache

    $ fc-cache

再查看系统可用的中文字体，确认上述字体已经可以为XeLaTeX使用：

    $ fc-list :lang=zh


接下来就可以Make了

    $ make
