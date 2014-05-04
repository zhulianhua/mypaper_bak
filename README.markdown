mypaper_bak
===========


说明
----
HUST 本科毕业论文LaTeX论文模板。
Fork自[这里](https://code.google.com/p/nwputhesis/)。表示感谢!

使用方法
--------
使用XeLaTeX+xeCJK宏包处理中文。 如果操作系统没有make工具，需要手动编译，
编译过程见Makefile。

Texlive 2012 编译通过。

Linux系统编译字体需求
---------------------
本论文中文使用了Windows系统上的SimSun(宋体)、SimHei(黑体) 、KaiTi(楷体)和FangSong(仿宋)
四种中文字体。 如果要在Linux下编译，需要把这些字体文件从Windows系统的Fonts目录放到Linux系统的用户字体
目录下(`~/.fonts/`)

* 首先查看Linux系统已安装的中文字体:
    
        $ fc-list :lang=zh


* 如果输出结果中没有上述字体, 就需要从Windows系统拷贝这四个字体文件到`~/.fonts/`下面。
      这四个字体文件在WIndows系统上的位置通常是：

        C:\Winsows\Fonts\simsun.ttc
        C:\Winsows\Fonts\simhei.ttf
        C:\Winsows\Fonts\simkai.ttf
        C:\Winsows\Fonts\STFANGSO.TTF
      **注意:** 打开Windows的Fonts文件夹时，不会显示文件名，只显示字体中文名字,这四个
          字体的中文名分别是*宋体 常规*、*黑体 常规*、*楷体 常规*和*华文仿宋 常规*。
          如果要查看字体的**文件名**右键字体，可右键字体点击属性查看。

* 拷贝完后,更新Linux系统上的字体cache

        $ fc-cache

* 再查看系统可用的中文字体，确认上述字体已经可以使用。

        $ fc-list :lang=zh


*  接下来就可以Make了

        $ make

参考
----
* [LaTeX中文排版](http://linux-wiki.cn/wiki/zh-hans/LaTeX%E4%B8%AD%E6%96%87%E6%8E%92%E7%89%88%EF%BC%88%E4%BD%BF%E7%94%A8XeTeX%EF%BC%89)
* [Archwiki](https://wiki.archlinux.org/index.php/TeXLive_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))
