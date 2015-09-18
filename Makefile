GTEST_DIR=/usr/src/gtest

check: factorial
	./factorial

factorial: factorial.o gtest-all.o
	g++ -o $@ factorial.o gtest-all.o -lpthread

factorial.o: factorial.cc
	g++ -c -o $@ $<

gtest-all.o: $(GTEST_DIR)/src/gtest-all.cc
	g++ -c -I$(GTEST_DIR) -o $@ $<

clean:
	rm -f factorial *.o
