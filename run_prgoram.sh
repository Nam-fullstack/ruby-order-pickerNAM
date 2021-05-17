#!/bin/bash
echo "Hello, welcome to Order Picker 9000"
echo "Please type the file name to select a group"
read GROUP
echo $GROUP
GROUP_PATH = "./groups/$GROUP"
echo "$GROUP_PATH"

ruby index.rb -path $GROUP_PATH
