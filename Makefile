# The executable 'helloworld' depends on all 3 object files
helloworld: main.o hello.o world.o
	cc -o helloworld main.o hello.o world.o # Line starts with TAB!

# Build main.o (only requires main.c to exist)
main.o: main.c
	cc -c main.c # Line starts with TAB!

# Build hello.o (only requires hello.c to exist)
hello.o: hello.c
	cc -c hello.c # Line starts with TAB!

# Build world.o (only requires world.c to exist)
world.o: world.c
	cc -c world.c # Line starts with TAB!

# Remove object files, executables (UNIX/Windows), Emacs backup files, and core files
clean:
	rm -rf  *.o helloworld helloworld.exe *~ *.core core # Line starts with TAB!
