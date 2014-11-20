
all: legacy.o

MY_INC=$(addprefix -I../../../, $(INC_FOLDERS))

legacy.o: *.cc *.h
	$(CXX) $(TARGET) $(OPT) -I ../../.. $(MY_INC) -c legacy.cc -o $@
