---
title: BOE B10 DS 泵组 I/O 设置
date: 2019-10-10 19:39:46
tags: [DRYVAC, DRYVAC SYSTEM, BOE, IO]
---

BOE B10中DS泵组与机台中间有一个中继电控柜，此电控柜设计时，DS泵组`Warning`、`Alarm`信号是`Normally Open`的，所以需要把`Set Warning And Failure Outputs As Normally Close Contact`前的勾取消，否则机台会报警无法开机。

如图。更换新泵或刷软件时需要注意。

![IO Interface > Signals menu](DS_IO_Interface_Signals_menu.png)

![IO Interface > Signals 有勾](DS_IO_Interface_Signals_checked.png)

![IO Interface > Signals 无勾](DS_IO_Interface_Signals.png)

CONFIGURATION > IO Interface > Signals
