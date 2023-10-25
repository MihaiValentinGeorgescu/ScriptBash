while getopts o:n:d: flag
do
	case "${flag}" in
		o) operator=${OPTARG};;
		n) shift $((OPTIND-2)); numbers=("$@"); break;;	
		f) dflag=true;;
	esac
done

numbers=(${numbers[@]//"-d"})

echo "operator $operator"
echo "numbers ${numbers[@]}"
echo "flag $dflag"

result=0

case "$operator" in
   	"+")
        	for num in "${numbers[@]}"; do
            		result=$((result + num))
        	done
        	;;
    	"subtract")
        	result="${numbers[0]}"
        	for ((i = 1; i < ${#numbers[@]}; i++)); do
            		result=$((result - numbers[i]))
        	done
        	;;
    	"multiply")
        	result=1
        	for num in "${numbers[@]}"; do
            		result=$((result * num))
        	done
        	;;
    	"divide")
        	result="${numbers[0]}"
        	for ((i = 1; i < ${#numbers[@]}; i++)); do
            		result=$((result / numbers[i]))
        	done
        	;;
    	*)
        	echo "Invalid operator: $operator"
        	exit 1
        	;;
esac

echo "rezultat = $result"
