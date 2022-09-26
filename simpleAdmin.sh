#Program creates a directory and sub-directory specified by the names of the first two arguments. A text file with Hello World! is created in the sub-directory with the name of the third argument.
#A link to the subdirectory is created with the name of the fourth argument and is located in the working directory.
#Usage: ./simpleAdmin #directoryName #sub-DirectoryName #fileName #linkName
#Ex: ./simpleAdmin myDirectory mySubDirectory hello shortcutToHello
#!/bin/bash
echo "-----Making directory $1-----"
mkdir $1
echo "-----Making sub-directory $2-----"
mkdir $1/$2
echo "-----Saving 'Hello World! to $3 under the path $1/$2-----"
echo "Hello World!" > $1/$2/$3
echo "-----Creating link $4 to $1/$2-----"
ln -s $1/$2 $4
