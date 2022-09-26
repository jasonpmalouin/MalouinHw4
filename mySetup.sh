#This script changes the CPU frequency to 600MHz, displays CPU Info, prints the working directory path, displays the # of items in the working directory, and updates the path variable to include this directory
#This script takes no arguments
#To execute, type ./mysetup.sh
#!/bin/bash
echo "-----Setting CPU Frequency to 600MHz-----"
sudo cpufreq-set -f 600MHz
echo "-----Displaying CPU Info-----"
cpufreq-info
echo "-----Creating Variable location And Displaying Value-----"
location="/home/debian"
echo $location
echo "------Printing The # Of Items In Your Working Directory-----"
items=$(ls | wc -l)
echo $items
echo "-----Updating Path and Printing to newPathValue.txt-----"
PATH="$PATH:/home/debian/Malouinhw4/"
export PATH
echo $PATH > newPathValue.txt
