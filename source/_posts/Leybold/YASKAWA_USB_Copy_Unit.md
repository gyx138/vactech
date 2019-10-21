---
title: 变频器参数拷贝器
date: 2019-10-20 19:11:36
tags: [DRYVAC, DRYVAC SYSTEM, RUVAC WH, YASKAWA, todo]
---

![USB Copy Unit](USB_Copy_Unit-8.png)

## 操作指南

### {% button #, Read %}：将变频器上的参数读取到{% label primary @拷贝器 %}中：
1. 将{% label primary @拷贝器 %}通过网线连接到被拷贝变频器的网线接口，{% label info @注意 COM 点亮表示通讯正常 %}；
2. 按住 {% button #, Read %} 按钮 1 秒钟，{% label primary @拷贝器 %}开始从变频器上读取参数，此时变频器上出现闪烁的“{% label warning @rEAd %}”字符。
   - 当出现“{% label success @End %}”时表示参数读取任务完成；
   - 如果出现“{% label danger @rdEr %}”则表示参数读取失败 。

### {% button #, Verify %}：比对变频器上的参数与{% label primary @拷贝器 %}中存储的参数是否一致：
3. 按住 {% button #, Verify %} 按钮 1 秒钟，开始比对变频器上的参数与{% label primary @拷贝器 %}中存储的参数，此时变频器上出现闪烁的“{% label warning @vrFy %}”字符。
   * 当出现“{% label success @End %}”时表示两者的参数完全一致（说明已读取成功）；
   * 如果出现“{% label danger @vFyE %}”，表示变频器的参数与{% label primary @拷贝器 %}中的参数有差异（需要重新读取）；

### {% button #, Copy %}：将{% label primary @拷贝器 %}中存储的参数复制到变频器上：
4. 从变频器上拔下网线，插入目标变频器网线接口，{% label info @确保通讯 COM 指示灯点亮 %}；
5. 按住 {% button #, Copy %} 按钮 1 秒钟，{% label primary @拷贝器 %}开始将参数复制到变频器上，此时变频器上出现闪烁的“{% label warning @CoPy %}”字符。
   - 当出现“{% label success @End %}”时表示参数复制完成；
   - 如果出现“{% label danger @CPyE %}”字符，则表示参数复制失败。
6. 按住 {% button #, Verify %} 按钮 1 秒钟，比对两者参数，确保比对成功。
   - 当出现“{% label success @End %}”时，即表示参数复制成功。

[pdf下载](V1000变频器参数拷贝USB.pdf)

## 说明书

[TOBP_C730600_25D_Technical_Manual.pdf](TOBP_C730600_25D_Technical_Manual.pdf)

## 电脑软件

CopyUnitManager
