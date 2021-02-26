all: graph.pdf graph_semilog.pdf graph_loglog.pdf

fit: graph_fit.pdf

graph.pdf: plot.gp data.tsv settings.txt
	gnuplot $<
	xpdf $@ &

graph_semilog.pdf: plot_semilog.gp data.tsv settings.txt
	gnuplot $<
	xpdf $@ &

graph_loglog.pdf: plot_loglog.gp data.tsv settings.txt
	gnuplot $<
	xpdf $@ &

graph_fit.pdf: plot_fit.gp data.tsv settings.txt
	gnuplot $<
	xpdf $@ &

clean:
	rm -f *.pdf data.tsv fit.log
