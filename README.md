\#!/bin/bash

CP="build;lib/\*"

echo "--- Compiling ---"

javac -cp ".;lib/\*" -d build src/Main.java

if \[ $? -eq 0 ]; then //check if the exit code == 0

&nbsp;   echo "--- Running ---"

&nbsp;   java -cp "$CP" Main

else

&nbsp;   echo "--- Compilation Failed ---"

fi

