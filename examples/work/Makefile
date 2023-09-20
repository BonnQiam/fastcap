
test:
	./run | tee output.txt

clean:
	-@rm -f *.out output.txt diff.txt

diff:
	-@rm -f diff.txt
	-for a in *.out; do \
	  diff -Z $$a results/$$a >> diff.txt; \
	done
