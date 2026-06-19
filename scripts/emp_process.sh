
input_file="emp_details.csv"
output_file="downstream.csv"

if [ ! -f "$input_file" ]; then
	echo "INput file doesn't exist"
	exit 1
fi

echo "Name,ID,experience,salary" > "$output_file"

while IFS=',' read -r name id experience; do
	if [[ "$experience" =~ ^[0-9]+$ ]];then
		salary=$((experience*1000))
		echo "$name,$id,$experience,$salary" >> "$output_file"
	else
		echo "Data quality issue in $experience field"
	fi
done < "$input_file"
echo "processing complete"

