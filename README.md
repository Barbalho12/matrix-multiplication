# Matrix Multiplication
Análise da implementação de multiplicação de matrizes em C++ sem o uso de threads e fazendo uso threads

## Execução
Para executar as análises é necessário iniciar o script "run.sh". Em uma execução simples:

    ./run.sh
Será exibido os possíveis parâmetros:

    Arguments:
    [0] N : Matrices NxN
    [1] THREADS_MODE : nt (no threads) or t (with threads)
    [2] IN_PATH : Folder of instances
    [3] OUT_PATH : Folder where result file will be saved
    [4] SHOW_MATRICES : If show matrices A, B and product
    [5] WRITE_RESULT : If write result in file [3]
    [6] SHOW_TIME : If show time (timeRead  timeProduct  timeShow)
    [7] THREADS_NUMBER : if [1] Specify number of threads
    [DEFAULT] 4 instances out n y y
    [OBS] It is necessary to define [0] and [1]

Sendo por padrão:

    [2] IN_PATH="instances"
    [3] OUT_PATH="out_nt"
    [4] SHOW_MATRICES="n"
    [5] WRITE_RESULT="y"
    [6] SHOW_TIME="y"
    [7] THREADS_NUMBER=2

Os parâmetros [0] e [1] precisam ser indicados obrigatoriamente. Exemplo de execução de uma multiplicação de matrizes:

    # instances/A4x4.txt * instances/B4x4.txt = out/out_nt/C4x4.txt
    ./run.sh 4 nt 
     # instances/A8x8.txt * instances/B8x8.txt = out/out_t/C8x8.txt (2 threads)
    ./run.sh 8 t 
     # ... * ... = ... (2 threads) sem impressão no terminal das Matrizes
    ./run.sh 16 t instances out_t n y y 
     # ... * ... = ... (16 threads) sem impressão no terminal das Matrizes
    ./run.sh 16 t instances out_t n y y 16
    
Resultado de execução para parte dos casos   
![f1](analyser/resultado.png?raw=true "Análise 1")

## Without threads



## with threads
![f1](analyser/resultado_t.png?raw=true "Análise 2")
