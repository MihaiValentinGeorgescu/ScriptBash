for number in {1..100}; do
	if [ $((number % 3)) -eq 0 ]; then
		echo "$number Fizz "
	fi
	if [ $((number % 5)) -eq 0 ]; then
                echo "$number Buzz "
	fi
	if [ $((number % 3)) -eq 0 ] && [ $((number % 5)) -eq 0 ]; then
                echo "$number FizzBuzz "
	fi
done
