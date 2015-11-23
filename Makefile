#GTEST=/usr/src/gtest
#GMOCK=/usr/src/gmock
GTEST=gtest-1.7.0
GMOCK=gmock-1.7.0

check: sample
	./sample

sample: sample.o gtest-all.o gmock-all.o
	g++ -o $@ sample.o gtest-all.o gmock-all.o -lpthread

sample.o: sample.cc
	g++ -c -I$(GTEST)/include -I$(GMOCK)/include -o $@ $<

gtest-all.o: $(GTEST)/src/gtest-all.cc
	g++ -c -I$(GTEST)/include -I$(GTEST) -o $@ $<

gmock-all.o: $(GMOCK)/src/gmock-all.cc
	g++ -c -I$(GMOCK)/include -I$(GTEST)/include -I$(GMOCK) -o $@ $<

clean:
	rm -f sample *.o
