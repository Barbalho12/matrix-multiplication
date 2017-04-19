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

Para execução das análises, é recomendado baixar as matrizes em [R1] e copia-las para a pasta instances. Além disso, pode ser necessário habilitar os scripts para execução (chmod). E também instalar o Gnuplot em [R2] para visualização das análises completas.
    
## Resultados

### Máquina 1
* Processador Intel Dual core 3.00GHz
* Ubuntu 16.10 64bits
* RAM 8.00 GB 

![f1](analyser/resultado_2core.png?raw=true "Análise 1")

![f1](analyser/resultado_t_2core.png?raw=true "Análise 2")

### Máquina 2
* Processador AMD Quadri core 
* Ubuntu 14.04 64bits
* RAM 8.00 GB 

![f1](analyser/resultado_4core.png?raw=true "Análise 3")

![f1](analyser/resultado_t_4core.png?raw=true "Análise 4")

### Análise

Percebe-se pelos gráficos que à medida que o tamanho das matrizes aumenta, melhor se dá o comportamento da abordagem com threads. Ainda é possível visualizar que essa otimização é ainda maior quando aplicado o experimento na Máquina 2, que possui 4 núcleos de processamento e a Máquina 1 só possui 2.

Nos gráficos abaixo também se pode analisar o tempo de multiplicação de uma mesma instância variando o número de thread, e assim visualizar qual o número que melhor executa a operação. Inicialmente é possível visualizar que sem threads a execução se dá mais rápida para instâncias menores, ilustrado na próxima figura. Porém, na figura seguinte essa realidade é bem diferente. Assim que o número de threads se iguala ao numero de núcleos da máquina o ganho de desempenho se torna cada vez menor, e isso é constatado em todas as análises.

![f1](analyser/comportamento_4-16.png?raw=true "Análise 5")

![f1](analyser/comportamento_1024-2048.png?raw=true "Análise 6")


## Referências

Matrizes
[R1] https://drive.google.com/open?id=0B2-QSGbkdLAcX2RFeWc2dXJac0U

Gnuplot
[R2] http://www.gnuplot.info/

