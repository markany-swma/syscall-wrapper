obj-m :=		syscall-wrapper.o
syscall-wrapper-objs :=	module.o	\
			wrapper.o	\
			syscalls.o

KBUILD =		/lib/modules/$(shell uname -r)/build
PWD =			$(shell pwd)

all:
	make -C $(KBUILD) M=$(PWD) modules

clean:
	make -C $(KBUILD) M=$(PWD) clean