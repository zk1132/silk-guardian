obj-m += usbkill.o
all:
	    make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	    make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

secure_delete:
		cd secure_delete && $(MAKE)

