bash clean.sh
gcc -pthread -O3 -c smtl.c
as -o cpufp_a64_fma.o cpufp_a64_fma.s
gcc -pthread -O3 -D_USE_A64_FMA -c cpufp.c
gcc -pthread -O3 -o cpufp_a64 smtl.o cpufp.o cpufp_a64_fma.o
