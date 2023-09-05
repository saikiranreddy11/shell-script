#!bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 <text.txt>"
    exit 1
fi
input_file="$1"

# Read the contents of the specified file and process each line
while read line
do
    echo "Processing: $line"
    # Add your processing logic here
done < "text.txt"