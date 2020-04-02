echo Welcome. 
echo ""
function howmanyfiles {
	echo How many files are in the current directory?
	read response
files=$(ls -1 | wc -l)
}
howmanyfiles
while [[ $response -ne $files ]]
do
	if [[ $response -lt $files ]]
	then
		echo Your answer is incorrect. Aim a little higher!
	elif [[ $response -gt $files ]]
	then
		echo Your answer is incorrect. Aim a little lower!
	fi
	howmanyfiles
done
echo Congratulations! Your answer is correct. 
