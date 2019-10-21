---
title: YASKAWA V1000
date: 2019-10-20 13:52:04
mathjax: true
tags: [DRYVAC, DRYVAC SYSTEM, RUVAC WH, YASKAWA]
---

## 变频器频率信号输入 A2-AC

![](pinout_signal.png)

$$H3-12 = \frac {最低频率}{最高频率} \cdot 100.0\%$$

### 电压信号

{% tabs 电压信号, 2 %}
<!-- tab 0~10VDC => 0~120Hz -->

频率$f$与电压$U$的关系：<mark>$f = 12 \cdot U$</mark>，其中：$U=[0,10]$ V

| 变频器参数 | Leybold | On-site |
|:-:|:-:|:-:|
| b1-01  | 0 | <mark>1</mark> |
| H3-09  | 2 | <mark>0</mark> |
| H3-10  | 0 | 0 |
| H3-12  | 0 | 0 |
| DIP S1 | I | <mark>V</mark> |
| DIP S4 | M | M |

<!-- endtab -->

<!-- tab 0~10VDC => 20~120Hz -->

频率$f$与电压$U$的关系：<mark>$f = 10 \cdot U + 20$</mark>，其中：$U=[0,10]$ V

| 变频器参数 | Leybold | On-site |
|:-:|:-:|:-:|
| b1-01  | 0 | <mark>1</mark> |
| H3-09  | 2 | <mark>0</mark> |
| H3-10  | 0 | 0 |
| H3-12  | 0 | <mark>16.7</mark> |
| DIP S1 | I | <mark>V</mark> |
| DIP S4 | M | M |

<!-- endtab -->

<!-- tab 0~10VDC => 24~120Hz -->

频率$f$与电压$U$的关系：<mark>$f = 9.6 \cdot U + 24$</mark>，其中：$U=[0,10]$ V

| 变频器参数 | Leybold | On-site |
|:-:|:-:|:-:|
| b1-01  | 0 | <mark>1</mark> |
| H3-09  | 2 | <mark>0</mark> |
| H3-10  | 0 | 0 |
| H3-12  | 0 | <mark>20.0</mark> |
| DIP S1 | I | <mark>V</mark> |
| DIP S4 | M | M |

<!-- endtab -->

<!-- tab 0~10VDC => 30~120Hz -->

频率$f$与电压$U$的关系：<mark>$f = 9 \cdot U + 30$</mark>，其中：$U=[0,10]$ V

| 变频器参数 | Leybold | On-site |
|:-:|:-:|:-:|
| b1-01  | 0 | <mark>1</mark> |
| H3-09  | 2 | <mark>0</mark> |
| H3-10  | 0 | 0 |
| H3-12  | 0 | <mark>25.0</mark> |
| DIP S1 | I | <mark>V</mark> |
| DIP S4 | M | M |

<!-- endtab -->
{% endtabs %}

### 电流信号

{% tabs 电流信号, 2 %}
<!-- tab 4~20mA => 0~120Hz -->

频率$f$与电流$I$的关系：<mark>$f = 7.5 \cdot I - 30$</mark>，其中：$I=[4,20]$ mA

| 变频器参数 | Leybold | On-site |
|:-:|:-:|:-:|
| b1-01  | 0 | <mark>1</mark> |
| H3-09  | 2 | 2 |
| H3-10  | 0 | 0 |
| H3-12  | 0 | 0 |
| DIP S1 | I | I |
| DIP S4 | M | M |

<!-- endtab -->
<!-- tab 4~20mA => 20~120Hz -->

频率$f$与电流$I$的关系：<mark>$f = 6.25 \cdot I - 5$</mark>，其中：$I=[4,20]$ mA

| 变频器参数 | Leybold | On-site |
|:-:|:-:|:-:|
| b1-01  | 0 | <mark>1</mark> |
| H3-09  | 2 | 2 |
| H3-10  | 0 | 0 |
| H3-12  | 0 | <mark>16.7</mark> |
| DIP S1 | I | I |
| DIP S4 | M | M |

<!-- endtab -->

<!-- tab 4~20mA => 24~120Hz -->

频率$f$与电流$I$的关系：<mark>$f = 6 \cdot I$</mark>，其中：$I=[4,20]$ mA

| 变频器参数 | Leybold | On-site |
|:-:|:-:|:-:|
| b1-01  | 0 | <mark>1</mark> |
| H3-09  | 2 | 2 |
| H3-10  | 0 | 0 |
| H3-12  | 0 | <mark>20.0</mark> |
| DIP S1 | I | I |
| DIP S4 | M | M |

<!-- endtab -->

<!-- tab 4~20mA => 30~120Hz -->

频率$f$与电流$I$的关系：<mark>$f = 5.625 \cdot I + 7.5$</mark>，其中：$I=[4,20]$ mA

| 变频器参数 | Leybold | On-site |
|:-:|:-:|:-:|
| b1-01  | 0 | <mark>1</mark> |
| H3-09  | 2 | 2 |
| H3-10  | 0 | 0 |
| H3-12  | 0 | <mark>25.0</mark> |
| DIP S1 | I | I |
| DIP S4 | M | M |

<!-- endtab -->
{% endtabs %}

## 变频器频率信号输出 AM-AC

![](pinout_signal.png)

### 电压信号 0~120Hz => 0~10VDC

频率$f$与电压$U$的关系：<mark>$f = 12 \cdot U$</mark>，其中：$U=[0,10]$ V

| 变频器参数 | Leybold | On-site |
|:-:|:-:|:-:|
| H4-01  | 106 | <mark>102</mark> |
| H4-02  | 999 | <mark>100</mark> |

{% echarts 500 '62%' %}
var data = [];

for (var u = 0; u <= 10; u += 0.2) {
	var f = 12*u;
	f = Math.round(f*100)/100;
	data.push([u, f]);
}

option = {
	tooltip: {
		trigger: 'axis',
		snap: true
	},
	xAxis: {
		name: '电压 U/V',
		interval: 1
	},
	yAxis: {
		name: '频率 f/Hz',
		interval: 10
	},
	series: [{
		data: data,
		type: 'line',
		lineStyle: {
			width: 4
		}
	}]
};
{% endecharts %}
