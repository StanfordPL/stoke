
TARGETS=legacy.o legacy_handlers.o sym_state.o c_interface.o

all: $(TARGETS)

MY_INC=$(addprefix -I../../../, $(INC_FOLDERS))

autogen: autogen.hs
	ghc autogen.hs

validator.switch: autogen
	./autogen

legacy_handlers.o: legacy_handlers.cc *.h
	$(CXX) $(TARGET) $(OPT) -O0 -I ../../.. $(MY_INC) -c $< -o $@

%.o: %.cc *.h validator.switch
	$(CXX) $(TARGET) $(OPT) -I ../../.. $(MY_INC) -c $< -o $@

clean:
	rm -f *.hi *.o validator.switch supported.switch
