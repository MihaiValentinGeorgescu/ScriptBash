echo -n "enter the number of Fibonacci numbers to generare: ="
read count
a=0
b=1

for ((i = 0; i < count; i++)); do
	echo -n "$c "
	c=$(($a + $b))
	a=$b
	b=$c
done
