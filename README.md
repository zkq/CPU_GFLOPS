# CPU_GFLOPS

## 简介

测试硬件平台的峰值浮点性能。在pigirons的基础上增加了对ARM64平台的支持。
pigirons链接：https://github.com/pigirons/cpufp

硬件平台：x86、ARM64
操作系统：Linux

## 使用方法

x86 build:
sh build_x86.sh

x86 test:
./cpufp_x86 num_cores


ARM64 build:
sh build_a64.sh

ARM64 test:
./cpufp_a64 num_cores

clean:
sh clean.sh
