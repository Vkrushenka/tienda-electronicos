CC = cl

OBJS = main.obj productos.obj usuarios.obj
TARGET = TiendaElectronicos.exe

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) /Fe:$(TARGET) $(OBJS)

main.obj: main.c
	$(CC) /c main.c

productos.obj: productos.c
	$(CC) /c productos.c

usuarios.obj: usuarios.c
	$(CC) /c usuarios.c

clean:
	del $(OBJS) $(TARGET)
