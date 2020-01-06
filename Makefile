CC?=gcc

TARGET = mini_telnetd

all: $(TARGET)

CFLAGS = -O2 -Wall
# Static compile
#CFLAGS = -O2 -Wall -static -static-libgcc

LDFLAGS=
OBJS = mini_telnetd.o

$(TARGET): $(OBJS)
		$(CC) -o $@ $^ $(LDFLAGS)

clean:
		rm $(OBJS) $(TARGET)

