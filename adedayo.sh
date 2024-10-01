# echo "hello world"

# echo "our shell name is $BASH"
# echo "our shell version name is $BASH_VERSION"
# echo "our shell home directory is $HOME"
# echo "our current working directory is $PWD"

# name=adedayo
# echo "My name is $name"
# value=10
# echo "my name is  $value "

# echo "enter your name : "
# read name1 name2 name3 name4
# echo "enter your names : $name $name1, $name2, $name3, $name4"

# read -p 'username : ' user_var
# read -sp 'password : ' pass_var
# echo "username : $user_var"
# echo "password : $pass_var"

# echo "enter your names"
# read -a names
# echo "Names : ${names[0]}, ${names[1]}, ${names[2]}"
# echo $0 $1 $2 $3 $4 ' > echo $1 $2 $3 $4'

# read 
# echo "Name : REPLY"

# arg=("$@")

# echo ${arg[0]} ${arg[1]} ${arg[2]} ${arg[3]} ${arg[4]}

# $@
# $#

# count=10

# if [ $count -eq 10 ]
# then
#     echo "condition is true"
# fi
# letter=D
# if [[ $letter  ==  "E" ]]
# then
#     echo "condition D true"
# elif [[ $letter  ==  "D"  ]]
# then
#     echo "condition D true"
# else
#     echo "condition is false"
    
# fi

# echo -e "enter the name of the file : \c"
# read file_name

# if [ -f $file_name ]
# then
#     if  [ -w $file_name ]
#     then
#         echo "Type some data. To quit press ctrl+d"
#         cat >> $file_name
#     else
#         echo "The file do not have write permissission"
#     fi
# else 
#    echo "$file_name not exists"
# fi

# age=30

# if [ "$age" -gt 18] || [ "$age" -le 30 ]
# then
#   echo "valid age"
#   else
#   echo "invalid age" 
# fi

# echo 1+1

echo -e "enter folder name : \c"
read folder_name


if [ -f $folder_name ]
then 
   
   