#TESTS=$(basename $(wildcard test*.expr))
TESTS=test001 test002 test003 test004 test005 test006 test007 test008 test009 test010 test012 test013 test014 test015 test016 test017 test018

.PHONY: check $(TESTS)

check: $(TESTS) 

$(TESTS): %: %.expr
#	RC_RUNTIME=../runtime ../src/rc.byte -o $< && cat $@.input | ./$@ > $@.log && diff $@.log orig/$@.log
	cat $@.input | RC_RUNTIME=../runtime ../src/rc.byte    $< > $@.log && diff $@.log orig/$@.log
	cat $@.input | RC_RUNTIME=../runtime ../src/rc.byte -s $< > $@.log && diff $@.log orig/$@.log

clean:
	rm -f test*.log *.s *~ $(TESTS)
