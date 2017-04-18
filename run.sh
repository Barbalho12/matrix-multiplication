PROGRAM="simpleProduct"

#compile
g++ -std=c++11 $PROGRAM.cpp -o bin/$PROGRAM.exe -pthread


IN_PATH="../instances"
N="4x4"
OUT_PATH="../out"
SHOW_MATRICES="n"
WRITE_RESULT="y"
SHOW_TIME="y"


if [[ $# -eq 0 ]] ; then
    echo 'Arguments:'
    echo '[0] N : Matrices NxN'
    echo '[1] IN_PATH : Folder of instances'
    echo '[2] OUT_PATH : Folder where result file will be saved'
    echo '[3] SHOW_MATRICES : If show matrices A, B and product'
    echo '[4] WRITE_RESULT : If write result in file [3]'
    echo '[5] SHOW_TIME : If show time (timeRead  timeProduct  timeShow)'
    echo '[DEFAULT] 4 instances out n y y'
    echo '[OBS] It is necessary to define [0]'
    exit 1
fi

if [ ! -z "$1" ]
    then N="$1x$1"
fi
if [ ! -z "$2" ]
    then IN_PATH=$2
fi
if [ ! -z "$3" ]
    then OUT_PATH=$3
fi
if [ ! -z "$4" ]
    then SHOW_MATRICES=$4
fi
if [ ! -z "$5" ]
    then WRITE_RESULT=$5
fi
if [ ! -z "$6" ]
    then SHOW_TIME=$6
fi

#Criate folder from out result (if not exists)
mkdir -p out

cd bin
./$PROGRAM.exe $IN_PATH/A$N.txt $IN_PATH/B$N.txt $OUT_PATH/C$N.txt $SHOW_MATRICES $WRITE_RESULT $SHOW_TIME
