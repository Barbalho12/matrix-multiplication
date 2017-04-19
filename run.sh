
PROGRAM1="simpleProduct"
PROGRAM2="threadProduct"


IN_PATH="../instances"
N="4x4"
OUT_PATH="../out_nt"
SHOW_MATRICES="n"
WRITE_RESULT="y"
SHOW_TIME="y"
THREADS_NUMBER=2


if [[ $# -lt 2 ]] ; then
    echo 'Arguments:'
    echo '[0] N : Matrices NxN'
    echo '[1] THREADS_MODE : nt (no threads) or t (with threads)'
    echo '[2] IN_PATH : Folder of instances'
    echo '[3] OUT_PATH : Folder where result file will be saved'
    echo '[4] SHOW_MATRICES : If show matrices A, B and product'
    echo '[5] WRITE_RESULT : If write result in file [3]'
    echo '[6] SHOW_TIME : If show time (timeRead  timeProduct  timeShow)'
    echo '[7] THREADS_NUMBER : if [1] Specify number of threads'
    echo '[DEFAULT] 4 instances out n y y'
    echo '[OBS] It is necessary to define [0] and [1]'
    exit 1
fi



PROGRAM=$PROGRAM1


if [ ! -z "$1" ]
    then N="$1x$1"
else
    echo [1] "[0] N : Matrices NxN"
    exit 1
fi
if [ "$2" = "nt" ]
then
    # echo "Simple"
    OUT_PATH="../out/out_nt"
    mkdir -p out/out_nt
    g++ -std=c++11 src/$PROGRAM1.cpp -o bin/$PROGRAM1.exe 
    cd bin
    ./$PROGRAM1.exe $IN_PATH/A$N.txt $IN_PATH/B$N.txt $OUT_PATH/C$N.txt $SHOW_MATRICES $WRITE_RESULT $SHOW_TIME
elif [ "$2" = "t" ]
then
    if [ ! -z "$8" ]
        then THREADS_NUMBER=$8
    fi
    OUT_PATH="../out/out_t"
    mkdir -p out/out_t
    g++ -std=c++11 src/$PROGRAM2.cpp -o bin/$PROGRAM2.exe -pthread
    cd bin
    ./$PROGRAM2.exe $IN_PATH/A$N.txt $IN_PATH/B$N.txt $OUT_PATH/C$N.txt $SHOW_MATRICES $WRITE_RESULT $SHOW_TIME $THREADS_NUMBER
else
    echo [1] "THREADS_MODE : nt (no threads) or t (with threads)"
    exit 1
fi
if [ ! -z "$3" ]
    then IN_PATH=$3
fi
if [ ! -z "$4" ]
    then OUT_PATH=$4
fi
if [ ! -z "$5" ]
    then SHOW_MATRICES=$5
fi
if [ ! -z "$6" ]
    then WRITE_RESULT=$6
fi
if [ ! -z "$7" ]
    then SHOW_TIME=$7
fi




# echo "Command: ./"./$PROGRAM.exe $IN_PATH/A$N.txt $IN_PATH/B$N.txt $OUT_PATH/C$N.txt $SHOW_MATRICES $WRITE_RESULT $SHOW_TIME



# echo "Command: ./"$PROGRAM1.exe $IN_PATH/A$N.txt $IN_PATH/B$N.txt $OUT_PATH/C$N.txt $SHOW_MATRICES $WRITE_RESULT $SHOW_TIME
# ./$PROGRAM1.exe $IN_PATH/A$N.txt $IN_PATH/B$N.txt $OUT_PATH/C$N.txt $SHOW_MATRICES $WRITE_RESULT $SHOW_TIME

# # echo "With Threads"
# echo "Command: ./"./$PROGRAM2.exe $IN_PATH/A$N.txt $IN_PATH/B$N.txt $OUT_PATH/C$N.txt $SHOW_MATRICES $WRITE_RESULT $SHOW_TIME
# ./$PROGRAM2.exe $IN_PATH/A$N.txt $IN_PATH/B$N.txt $OUT_PATH/C$N.txt $SHOW_MATRICES $WRITE_RESULT $SHOW_TIME
