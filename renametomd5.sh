#!/bin/bash

for file in *; do
	filesum=$(md5sum "$file" | cut -d" " -f1)
	fileExtension="${file##*.}"
	echo "$file > $filesum.$fileExtension"
	mv "$file" $filesum"."$fileExtension
done;