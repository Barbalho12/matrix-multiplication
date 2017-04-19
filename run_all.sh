mkdir -p analyser
# mkdir -p out
rm -rf analyser/database*.txt
# rm -rf analyser/database_nt.txt

min=1
max=10



a=4

echo "No Threads"
for i in `seq $min $max`
do
    echo $a
    temp=`./run.sh $a nt`
    echo -e $a' '$temp >> analyser/database_nt.txt
    a=$(( a * 2 )) 
done

a=4
THREADS_NUMBER=1
echo "With Threads"
for i in `seq $min $max`
do
	for j in `seq 1 12`
	do
		if [  ! "$a" -lt "$THREADS_NUMBER" ]; then 
    		echo $a"->"$THREADS_NUMBER
	    	temp=`./run.sh $a t ../instances ../out_nt n y y $THREADS_NUMBER`
	    	echo -e $a' '$THREADS_NUMBER' '$temp >> analyser/database_t_$THREADS_NUMBER.txt
	    	THREADS_NUMBER=$(( THREADS_NUMBER * 2 )) 
		fi
	    
	done
	a=$(( a * 2 )) 
	THREADS_NUMBER=1
done


cd analyser
gnuplot script.gnu 
