mkdir -p analyser
mkdir -p out
rm -rf analyser/database.txt

min=1
max=10
# cent=100

# if [ ! -z "$1" ]
#     then min=$2
# fi
# if [ ! -z "$2" ]
#     then max=$2
# fi

echo ""
a=4
for i in `seq $min $max`
do
    echo $a
    temp=`./run.sh $a`
    echo -e $a' '$temp >> analyser/database.txt
    a=$(( a * 2 )) 
    # percent=$((( i / max ) * cent)) 
    # echo -e "\e[1A--- Progress: $percent%"
done

cd analyser
gnuplot script.gnu 
