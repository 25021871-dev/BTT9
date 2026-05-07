#!/bin/bash

case "$(uname -s)" in
    CYGWIN*|MINGW32*|MSYS*|MINGW64*)
        SEP=";"   # Windows
        ;;
    *)
        SEP=":"   # Linux and Mac
        ;;
esac

CP="build${SEP}lib/*"

echo "--- Compiling ---"

mkdir -p build

javac -cp ".${SEP}lib/*" -d build src/Main.java

if [ $? -eq 0 ]; then
    echo "--- Running ---"
    java -cp "$CP" Main
else
    echo "--- Compilation Failed ---"
fi

echo ""
read -p "Press Enter to close..."
