# 原理图法实现FPGA多功能数字钟

仅供学习和参考

合工大FPGA大作业：多功能数字钟

仓库地址https://github.com/ScanfIkun/FPGA-DigitalClock

使用前先解压

### FPGA型号

EP2C5Q208

### 软件版本

Quartus II 9.1

### 功能介绍

* 能够准确计时，以数字形式显示时、分、秒
* 能够手动校时与设定闹钟
* 时、分、秒的校时功能
* 控制闹铃的开启和关闭
* 能够整点报时

### 输入输出端口说明

* 输入端口

RESECT：系统复位，低电平为复位状态

MODEA与MODEB：当AB为10是表示设置闹钟，当AB为01时表示设置时钟，当AB为00时表示正常走时

SELECT：高电平时表示调小时，低电平表示调分钟

ALARM：闹铃控制，低电平为关闭闹铃

CLK：1Hz时钟信号

CHANGE：单次脉冲信号

CLKD：1kHz扫描信号

* 输出端口

LD\_hour：亮起时表示正在设置小时

LD\_minute：亮起时表示正在设置分钟

LD\_alarm：亮起时表示正在设置闹钟

BEEP：蜂鸣器信号

BCDA-D：七段显示信号

P[7..0]：数码管扫描信号

* 其他端口

SHUT：低电平表示关闭闹钟，高电平表示开启闹钟

MODE：低电平表示闹钟模式，高电平表示时钟模式

IN1和IN2：蜂鸣器输入信号

INHOUR：整点时输出高电平

ALM：到达设定的时间时输出高电平

### 使用说明

用Quartus打开DigitalClock.qpf文件，先点编译，然后参考下图分配管脚，烧写即可

若出现显示位置不正常问题，可尝试更改P[7..0]的管脚分配值，或者检查电路的连接

​![assets](./assets.png)​

‍
