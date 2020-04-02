function count_files {
        count=$(ls -l | grep -v ^d | wc -l)
        echo $count
}

echo How many files are in the current directory?

read response

count=$(count_files)

if [[ $response -ne $count ]]
then
        while [ $response -ne $count ]
        do
                if  [[ $response -lt $count ]]
                then
                        echo "Your answer is incorrect. Aim a little higher!"
                elif [[ $response -gt $count ]]
                then
                        echo "Your answer is incorrect. Aim a little lower!"
                fi
                read response
        done
fi
echo "Congratulations! Your answer is correct"
