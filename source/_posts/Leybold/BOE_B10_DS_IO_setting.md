---
title: BOE B10 DS 泵组 I/O 设置
date: 2019-10-10 19:39:46
updated: 2019-10-20 12:14:36
tags: [DRYVAC, DRYVAC SYSTEM, BOE, IO]
---

BOE B10中DS泵组与机台中间有一个中继电控柜，此电控柜设计时，DS泵组{% label warning @Warning %}、{% label danger @Alarm %}信号是{% label primary @Normally Open %}的，所以需要把{% label info @Set Warning And Failure Outputs As Normally Close Contact %}前的勾取消，否则机台会报警无法开机。

<mark>更换新泵或刷软件时需要特别注意</mark>。

设置路径：{% button #, CONFIGURATION %} > {% button #, IO Interface %} > {% button #, Signals %}

![IO Interface > Signals menu](DS_IO_Interface_Signals_menu.png)

{% tabs IO Interface, 2 %}
<!-- tab 默认设置 -->
DS泵组{% label warning @Warning %}、{% label danger @Alarm %}信号 = Normally <mark>Close</mark>
![IO Interface > Signals 有勾](DS_IO_Interface_Signals_checked.png)
<!-- endtab -->

<!-- tab BOE B10 设置 -->
DS泵组{% label warning @Warning %}、{% label danger @Alarm %}信号 = Normally <mark>Open</mark>
![IO Interface > Signals 无勾](DS_IO_Interface_Signals.png)
<!-- endtab -->
{% endtabs %}
