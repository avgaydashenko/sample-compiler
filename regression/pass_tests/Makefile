TESTS=test000 test001 test002 test003 test004 test005 test006 test007
#TESTS=test000

.PHONY: check $(TESTS)

check: $(TESTS)

$(TESTS): %: %.expr
	cat $@.input | RC_RUNTIME=../../runtime ../../src/rc.byte -i $< > $@.log && diff $@.log orig/$@.log
	cat $@.input | RC_RUNTIME=../../runtime ../../src/rc.byte -s $< > $@.log && diff $@.log orig/$@.log
	RC_RUNTIME=../../runtime ../../src/rc.byte -o $< && cat $@.input | ./$@ > $@.log && diff $@.log orig/$@.log

clean:
	rm -f *.log *.s *~ $(TESTS)
