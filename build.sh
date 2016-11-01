#!/usr/bin/env bash

mkdir -p build

SRC="iterm2-finder.applescript"
ICONSRC="assets/icon.icns"
OUTPUT="$(pwd)/build/iTerm CD.app"

#check source exists
if [ -f ${SRC} ]; then
	echo "Compiling '$SRC' into an application..."
  echo "Output location: $OUTPUT"
else
	echo "Cannot locate source file $SRC"
	exit 1
fi

#confirm file override
CONFIRM="n"
if [ -e "$OUTPUT" ]; then
	read -p "Replace \"$OUTPUT\"? [yn] " -n 1 CONFIRM
	echo
else
	CONFIRM="y"
fi

#compile applicaiton
if [[ $CONFIRM = "y" ]]; then
	osacompile -o "$OUTPUT" "$SRC"
	if [ $? -eq 0 ]; then
		echo "Built \"$SRC\" successfully."
		echo "Copying icons..."
	else
		echo "ERROR: build failed for \"$SRC\""
		exit 1
	fi
else
	echo "Cancelled compiling $SRC"
	exit 1
fi

#copy icons
if [ -f ${ICONSRC} ]; then
	cp "${ICONSRC}" "$OUTPUT/Contents/Resources/droplet.icns"
	if [ $? -eq 0 ]; then
		echo "Icons copied."
		echo "Binary located at: \"$OUTPUT\""
	else
	  echo "Copying icons failed."
	  exit 1
	fi
else
	echo "Cannot locate icon file $ICONSRC"
	exit 1
fi

exit 0