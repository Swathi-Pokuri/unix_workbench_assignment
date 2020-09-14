#guessinggame.sh
#simply, this program needs user to guess number of files present in the 'pwd' correctly
#step1:this script prompts for an input
#step2:if input equals files count, program stops,else, gives prompt to user until user input is correct with comments.
#please note file should be at home location...written as per requirement to call script without path name
#code starts below

guessit()
{
 	files_mu,=`ls -a |wc -l`
	t=$@
	if [[ $files_num -eq $t ]]
	then 
		echo "congratulations!!! you guessed it correct."
		exit 1;
	elif [[ $files_num -lt $t ]]
	then
		echo "your guess is too high...guess again"
	else
		echo "your guess is too low...guess again"
	fi
}

echo "Let's guess the number of files in current path..number please:"
read guess_value
guessit $guess_value
while [[ $? -eq 0]]
do
	bash guessgame.sh
done

