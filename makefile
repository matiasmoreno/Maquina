
run: jar

jar: classes
	jar cfm Maquina.jar manifest.mf -C build/classes .


classes: dir
	javac -sourcepath src/ -d build/classes src/*.java -Xlint

dir:
	if [ ! -d build/classes ]; then mkdir -p build/classes; fi
	if [ ! -d build/jar ]; then mkdir -p build/jar; fi
clean:
	if [ -d build ]; then rm build -R; fi
