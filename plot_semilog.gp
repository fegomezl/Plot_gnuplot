set g
set term pdf
set key opaque
set ls 1 lc rgb 'blue' lt 1 lw 0.5

Title = system("sed -n 1p settings.txt")
Tx = system("sed -n 2p settings.txt")
Ty = system("sed -n 3p settings.txt")

file = 'data.tsv'
set o 'graph_semilog.pdf'

set tit Title.' (Semi-log)'
set xl Tx
set yl Ty

set logscale y

p file u 1:2 ls 1 t 'Data'
