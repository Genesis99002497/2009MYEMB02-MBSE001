PROJECT_NAME = Genesis_99002497_Emp

# Output directory
BUILD = build

# All source code files
SRC = imple/main.c\
imple/source/menu.c\




# All include folders with header files
INC	= -Iinc

PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out



# Default target built
$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run clean test  doc all

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out

# Call `make run` to run the application
run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT).out
	
all: $(SRC) $(BUILD)
gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out -lm 




# Remove all the built files, invoke by `make clean`
clean:
	rm -rf $(BUILD) $(DOCUMENTATION_OUTPUT)

# Create new build folder if not present
$(BUILD):
	mkdir build
