while getopts ":i:o:vs:rlu" opt; do
	case $opt in
		v)
			swapcase=true
			;;
		s)
			substitute=true
			;;
		r)
			reverse=true
			;;
		l)
			lowercase=true
			;;
		u)
			uppercase=true
			;;
		i)
			input_file="$OPTARG"
			;;
		o)
			output_file="$OPTARG"
			;;
		?)
			echo "requires an argument"
			exit 1
			;;
		esac
done

if [ "$swapcase" = true ]; then
	tr '[:upper:][:lower:]' '[:lower:][:upper:]' < $input_file > $output_file
fi

if [ "$substitute" = true ]; then
        sed 's/<A_WORD>/<B_WORD>/g' $input_file > $output_file
fi

if [ "$reverse" = true ]; then
	tac "$input_file" | rev
fi

if [ "$lowercase" = true ]; then
        tr '[:upper:]' '[:lower:]' < $input_file > $output_file
fi

if [ "$uppercase" = true ]; then
        tr '[:lower:]' '[:upper:]' < $input_file" > "$output_file
fi



