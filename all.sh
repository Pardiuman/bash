
# ---- ARRAY -----
echo "Hello World";
myArray=(1 2 3 4 5)
echo "${myArray[0]}"
echo "${myArray[*]:1}"
echo "${myArray[*]:2:4}"

myArray+=(6 7 8)
echo "${myArray[*]}"

# ---- STRING -----
name="pardium"
echo $name
length=${#name}
echo $length
upper=${name^^}
echo $upper
lower=${name,,}
echo $lower
replace=${name/pardium/ilu}
echo $replace
slice=${name:2:5}
echo $slice


# ---- USER INPUT -----
read name
read -p "enter your name: " name
echo $name

# ---- ARITHMETIC OPERATION -----
number=81
(( number++ ))
echo $((number++)

if [ $number -gt 90 ]
then
    echo "first grade"
elif [ $number -gt 80 -a $number -lt 90 ]
then
    echo "second grade"
else
    echo "fail"
fi


---- CHOICE ----
echo "ls for listing files"
echo "ls -a for all files including hidden also"
echo "pwd for printing working directory"

# read option

case $option in
    "ls") ls;;
    "ls -a") ls -a;;
    "pwd") pwd;;
    *) echo "enter correct command";;
esac


# ---- FOR-LOOP ----
for i in 1 2 3 4 5
for i in {1..5}
for i in 1 23 4 name ilu
do
    echo $i
done


#  ---- WHILE-LOOP -----
i=0
while [ $i -lt 10 ]
do 
    echo $i
    (( i++ ))
done

# ---- UNTIL-LOOP -----
it=0
until [ $it -eq 10 ]
do 
    echo $it
    (( it++ ))
done


# ---- FUNCTIONS ----
firstFunction() {
    # read -p "enter your name" name
    echo "hello $1"
    echo "your age $2"
    echo "$#"  #this is for printing number of arguments.
    echo "$@"  # this is for printing all arguments
    for args in $@; do
        if [[ "$args" =~ ^[0-9]+$ ]]; then  # first we check for regular expression means if args contain then only we will compare it with number
            if [ $args -eq 24 ]; then
                echo "argument match $args"
            fi
        fi
    done
    
}

firstFunction ilu 24


# other concepts
ls=$(ls)  # wrong input so it throws output other than 0
echo $?
path="/home/ubuntu/Desktop/file.txt"
filename=$(basename "$path")  # basename - extracts the filename from path
dirname=$(dirname "$path")  # dirname - extracts the dir from path
# realpath=$(realpath "$path")  #realpath - gives the realpath even if there is any symbolic link there
echo $filename
echo $dirname
# echo $realpath

# if [ -d folderName]; then   # check if folder exists  for not  (  if[ ! -d foldername ]; )
# if [ -f filename ]; then   # check if there is any file exists and for not (  if [ ! -f filename ]; )

ls /root & > /dev/null  # if we dont want to capture the output or print on console we can redirect the result to /dev/null
                        # and if we use & at the end of any command send command in background we can retrive it by " fg %1 "
nohup watch &           # diff b/w nohup and & is nohup does not assocaite command with terminal but & at the end does

# ---- AT && CRONTAB -----
at # use this for schedule job for single time , use atq to see all schedule jobs , use atrm to remove job 
at 12:09 pm 
--command--
ctrl + d
------------
crontab -l # for listing all schedule jobs"
crontab -e # for adding removing schedule jobs"
* * * * *  # minute hour dom m dow






























