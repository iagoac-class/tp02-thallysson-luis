# Nome do projeto
PROJ_NAME=arvores

# Arquivos .c
C_SOURCE=$(wildcard *.c)

# Arquivos .h
H_SOURCE=$(wildcard *.h)

# Arquivos objeto
OBJ=$(C_SOURCE:.c=.o)

# Compilador
CC=gcc

# Flags (opções) para o compilador
CC_FLAGS=-c         \
         -Wall      \
		 -g         \
         -Wpedantic

#########################
# Compilação e linkagem #
#########################
all: $(PROJ_NAME) clean

$(PROJ_NAME): $(OBJ)
	$(CC) -o $@ $^

%.o: %.c %.h
	$(CC) $(CC_FLAGS) -o $@ $<

clean:
	rm -rf *.o *~