src := $(shell ls *.c)
objs := $(patsubst %.c,%.o,$(src)) 

test: $(objs)
	gcc -Os -o $@ $^
 
%.o:%.c
	gcc -c -Os -o $@ $<
 
.PHONY: clean
clean:
	rm -f test *.o