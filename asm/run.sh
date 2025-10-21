as -g test.s -o test.o
ld test.o -o test
./test
echo $?