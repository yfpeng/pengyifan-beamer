reset

set term tikz standalone color solid size 3in,5in
set output "fvalue.tex"

set tmargin 7
set bmargin 10
set border 1
set key at graph 0.24, 1.05 horizontal samplen 0.1

set style data histogram
set style histogram cluster gap 1
set style fill solid noborder
set boxwidth 0.8

set style line 4 lc "grey" lt 0
set grid noxtics my2tics y2tics linestyle 4, linestyle 4
set xtics right rotate by 90# offset 0,-6 

unset ytics
set y2tics rotate by 90 offset 0,-1 format "%.0f%%"
set y2label "precision" offset -2.5
set yrange [70:100]
set y2range [70:100]

set label 1 'assign' at graph 0.14, 1.06 rotate by 90
set label 2 'boundary' at graph 0.215, 1.06 rotate by 90

set linetype 1 lc rgb "#0071BC" lt 1 lw 0
set linetype 2 lc rgb "#6CB7EA" lt 1 lw 0

set multiplot
plot "fvalue.dat" u 2 title ' ', '' u 5 title ' ', '' u 0:(0):xticlabel(1) w l title ''
set linetype 2 lc rgb "#C0A000" lt 1 lw 0

