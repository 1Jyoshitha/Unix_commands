

calculate_sq(){
	local x=$1
	sq=$((x*x))
	echo "square of num $1 is $sq"
}
calculate_sq 13
