function guessinggame.sh {

echo How many files are in the current directory?

read response

  if [[ $response -eq 3 ]] 
  then
    echo Congratulations! $response is the correct answer.

  elif [[ $response -gt 3 ]]
  then 
    echo $response is an incorrect answer. Try again and aim a little lower. 
    read response

  else
    echo $response is an incorrect answer. Try again and aim a little higher. 
    read response
  fi
}
