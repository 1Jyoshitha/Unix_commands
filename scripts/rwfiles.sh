echo "Hello world" > files.txt
echo "Hello world again" >> files.txt

if [ $? -eq 0 ]; then
    echo "file created successfully"
    cat files.txt
else
    echo "Try again"
fi