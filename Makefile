foo: src/foo.cpp
	g++ -g src/foo.cpp -I include -L lib -lbar -o build/foo.exe