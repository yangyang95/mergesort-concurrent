reset                                                        
set ylabel 'time(ms)'
set style fill solid
set key left top 
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][:380]'output.txt' using 2:xtic(1) with histogram title '4 threads sorted (first)', \
'' using 3:xtic(1) with histogram title '10 threads sorted (first)'  , \
'' using 4:xtic(1) with histogram title '4 threads random (first)'  , \
'' using 5:xtic(1) with histogram title '10 threads random (first)'  , \
'' using 6:xtic(1) with histogram title '4 threads sorted (second)'  , \
'' using 7:xtic(1) with histogram title '10 threads sorted (second)'  , \
'' using 8:xtic(1) with histogram title '4 threads random (second)'  , \
'' using 9:xtic(1) with histogram title '10 threads random (second)'  , \
'' using 10:xtic(1) with histogram title '4 threads random (third)'  , \
'' using 11:xtic(1) with histogram title '10 threads random (third)'  , \
'' using ($0+0.5):(310):2 with labels title ' ' textcolor lt 1, \
'' using ($0+0.5):(300):3 with labels title ' ' textcolor lt 2, \
'' using ($0+0.5):(290):4 with labels title ' ' textcolor lt 3, \
'' using ($0+0.5):(280):5 with labels title ' ' textcolor lt 4, \
'' using ($0+0.5):(270):6 with labels title ' ' textcolor lt 5, \
'' using ($0+0.5):(260):7 with labels title ' ' textcolor lt 6, \
'' using ($0+0.5):(250):8 with labels title ' ' textcolor lt 7, \
'' using ($0+0.5):(240):9 with labels title ' ' textcolor lt 8, \
'' using ($0+0.5):(230):10 with labels title ' ' textcolor lt 9, \
'' using ($0+0.5):(220):11 with labels title ' ' textcolor lt 10