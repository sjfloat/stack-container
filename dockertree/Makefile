
view: dockertree.pdf
	apvlv $<

%.ps: %.dot
	dot -Tps $< > $@
	
%.pdf: %.ps
	ps2pdf $<

dockertree.dot: find.out
	dockertree < $< > $@

find.out:
	grep '^from' `find .. -name Dockerfile` > $@

clean:
	rm -f dockertree.pdf dockertree.ps dockertree.dot find.out
