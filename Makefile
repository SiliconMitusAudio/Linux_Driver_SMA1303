obj-m := sma1303.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

install:
	sudo cp sma1303.ko /lib/modules/$(shell uname -r)
	sudo depmod -a

