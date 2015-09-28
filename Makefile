GTEST=/usr/src/gtest
GMOCK=/usr/src/gmock

check: sample
	./sample

sample: sample.o gtest-all.o gmock-all.o
	g++ -o $@ sample.o gtest-all.o gmock-all.o -lpthread

sample.o: sample.cc
	g++ -c -o $@ $<

gtest-all.o: $(GTEST)/src/gtest-all.cc
	g++ -c -I$(GTEST) -o $@ $<

gmock-all.o: $(GMOCK)/src/gmock-all.cc
	g++ -c -I$(GMOCK) -o $@ $<

clean:
	rm -f sample *.o
