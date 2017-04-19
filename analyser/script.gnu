set encoding iso_8859_1 
set grid 
set key top left 
set xlabel 'Instance Size' 
set ylabel 'time (Millisecond)' 


set title 'Multiplication of matrices' 
plot 'database_nt.txt' using 1:3 t 'Without Threads' with linespoints #lw 4  
rep 'database_t_1.txt' 	using 1:4 t '1 Threads' with linespoints #lw 4  
rep 'database_t_2.txt' 	using 1:4 t '2 Threads' with linespoints #lw 4  
rep 'database_t_4.txt' 	using 1:4 t '4 Threads' with linespoints 
#rep 'database_t_8.txt' 	using 1:4 t '8 Threads' with linespoints #lw 4  
#rep 'database_t_16.txt' using 1:4 t '16 Threads' with linespoints 
#rep 'database_t_32.txt' using 1:4 t '32 Threads' with linespoints 
rep 'database_t_64.txt' using 1:4 t '64 Threads' with linespoints 
rep 'database_t_128.txt' using 1:4 t '128 Threads' with linespoints 
#rep 'database_t_256.txt' using 1:4 t '256 Threads' with linespoints #lw 4 
#rep 'database_t_512.txt' using 1:4 t '512 Threads' with linespoints 
rep 'database_t_1024.txt' using 1:4 t '1024 Threads' with linespoints 
rep 'database_t_2048.txt' using 1:4 t '2048 Threads' with linespoints #lw 4 
#set terminal png 
set terminal png font arial 20 size 1280,720
set output 'resultado.png' 
#set terminal eps 
#set output 'resultado.eps' 
replot 


set title 'Multiplication of matrices with Threads' 
plot 'database_t_2.txt' 	using 1:4 t '2 Threads' with linespoints #lw 4  
rep 'database_t_4.txt' 	using 1:4 t '4 Threads' with linespoints 
rep 'database_t_8.txt' 	using 1:4 t '8 Threads' with linespoints #lw 4  
#rep 'database_t_16.txt' using 1:4 t '16 Threads' with linespoints 
#rep 'database_t_32.txt' using 1:4 t '32 Threads' with linespoints 
#rep 'database_t_64.txt' using 1:4 t '64 Threads' with linespoints 
rep 'database_t_128.txt' using 1:4 t '128 Threads' with linespoints 
#rep 'database_t_256.txt' using 1:4 t '256 Threads' with linespoints #lw 4 
#rep 'database_t_512.txt' using 1:4 t '512 Threads' with linespoints 
rep 'database_t_1024.txt' using 1:4 t '1024 Threads' with linespoints 
rep 'database_t_2048.txt' using 1:4 t '2048 Threads' with linespoints #lw 4 
#set terminal png 
set terminal png font arial 20 size 1280,720
set output 'resultado_t.png' 
#set terminal eps 
#set output 'resultado_t.eps' 
replot 
