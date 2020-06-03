#!/bin/sh
echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create your a file called $USER_NAME_FILE"
touch $USER_NAME_FILE
echo "I will create your a file called {$USER_NAME}_file"
touch "${USER_NAME}_file"