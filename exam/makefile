export EXE_FILE := exe
export SOURCE_FILES := $(wildcard *.cpp)

$(EXE_FILE) : $(SOURCE_FILES)
	@- g++ $^ -o $(EXE_FILE)

.PHONY : run
run: $(EXE_FILE)
	@- ./$(EXE_FILE)

.PHONY : clean
clean:
	@- rm -rf $(EXE_FILE)
