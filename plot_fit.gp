set g
set term pdf
set key opaque
set ls 1 lc rgb 'blue' lt 1 lw 0.5
set ls 2 lc rgb 'red' lt 1 lw 0.5

Title = system("sed -n 1p settings.txt")
Tx = system("sed -n 2p settings.txt")
Ty = system("sed -n 3p settings.txt")

file = 'data.tsv'
set o 'graph_fit.pdf'

set tit Title.' con linea de tendencia'
set xl Tx
set yl Ty

set fit errorvar

#f(x) = A*x+B
f(x) = A*x**B
#f(x) = A*exp(B*x)
#f(x) = 

A = 3000
B = -1

fit f(x) file u 1:2 via A,B

A = A*1E-6
A_err = A_err*1E-6

#A_tex = gprintf("%.2t", A)
#A_err_tex = gprintf("0.0%.0t", A_err)

Fit = sprintf(" λ = Ax^B \n A ≅ (%.6f ± %.6f) mK \n B ≅ (%.5f ± %.5f)", A, A_err, B, B_err)
set obj 2 rect from graph 0, 1 to graph 0.37, 0.81 fc rgb "white" front
set lab 2 Fit at graph 0, 0.96 front

A = A*1E6

p file u 1:2 ls 1 t 'Data', f(x) ls 2 t 'Fit'
