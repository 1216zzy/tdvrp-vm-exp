# TDVRP 无人机路径规划实验代码
> 研究方向：低空经济，车机协同配送，局部搜索优化算法
> 核心求解代码：C语言；可视化绘图：Python + Matplotlib
> 开发环境：Ubuntu虚拟机 + VSCode Remote-SSH，代码托管于GitHub（私有仓库）

## 项目简介
本项目针对带时间窗无人机车辆路径规划问题(TDVRP)，使用C语言实现局部搜索算法（2-opt邻域优化）求解配送路线。
C程序完成距离计算、路线迭代优化，将最优路径与迭代收敛数据输出到文本文件；Python脚本读取结果，绘制配送路线图、算法收敛曲线，用于论文图表。

## 目录结构
```plaintext
tdvrp-vm-exp/
├── code/                # C核心源码
│   ├── main.c          # 程序入口
│   ├── solver.c        # 局部搜索、2opt算法
│   └── solver.h       # 头文件、结构体定义
├── dataset/             # 原始客户坐标数据集
├── output/             # C输出txt结果、python生成图片
├── plot/
│   └── plot_route.py   # Python绘图脚本（matplotlib）
├── Makefile            # GCC编译脚本
├── README.md
└── .gitignore
