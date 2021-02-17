CC?=gcc

TARGET = mini_telnetd

all: $(TARGET)

CFLAGS = -O2 -Wall
# Static compile
#CFLAGS = -O2 -Wall -static -static-libgcc
# Use for older systems 
#CFLAGS = -O2 -Wall -DOLD_GETPTY=true

LDFLAGS=
OBJS = mini_telnetd.o

$(TARGET): $(OBJS)
		$(CC) -o $@ $^ $(LDFLAGS)

clean:
		rm $(OBJS) $(TARGET)

