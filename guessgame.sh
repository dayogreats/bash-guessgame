#!/bin/bash
# Author: Dayo Greats
# Path: game.sh

game_header(){
    echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::: \n" # -e executes \n in the echo
    echo -e ":::::::::::::::: GUESS A NUMBER GAME ::::::::::::::: \n"
    echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::: \n"
    sleep 2
    echo -e "Welcome to Bash Game!\nIn this game, you will guess a random whole number between 1 to 10.\n"
    sleep 2
}
# greet user method
game_header

# game over footer method
game_footer(){
    echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::: \n"
    echo -e "::::::::::::::::::::: GAME OVER :::::::::::::::::::: \n"
    echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::: \n"
}

# get user input method
get_user_name(){
    read -p "Enter your name: " name # -p displays a prompt waiting user input
    echo -e "Hello $name, let's start the game \n"
    echo -e "**** ...game loading...****\n"
    sleep 3
}
# call user info method
get_user_name

echo -e "I am thinking of a number between 1 to 10.\n"

# play again method
play_again(){
    read -p "Do you want to play again? (y/n): " answer
    if [[ $answer == "y" ]]
    then
        echo -e "Let's play again\n"
        guess_logic
    else
        echo -e "Thank you for playing\n"
        game_footer
        exit
    fi
}

# random logic
guess_logic(){
    # generate random number method
    random_number=$(( ( RANDOM % 10 )  + 1 ))

    if [[ $random_number -gt 5 ]]
    then
        echo "*Hint: the number is greater than 5.*"
    elif [[ $random_number -eq 5 ]]
    then
        echo "*Hint: the number is in nan average position.*"
    else
        echo "*Hint: the number is less than 5.*"
    fi

    # read user input number
    read -p  "Can you guess the number: " number

    if [[ $number -eq $random_number ]] 
     then
        echo -e "You guess $number and the number was $random_number.\nCongratylations. You win!!!\n"
        play_again 
    else
        echo "Oops! You lose!!!"
        echo -e "You guessed $number but the number was $random_number \n"
        play_again 
    
    fi
}
# perform guess logic
guess_logic random_number






