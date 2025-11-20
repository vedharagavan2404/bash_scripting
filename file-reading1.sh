#!/bin/bash

filename="users.txt";

lines=$(wc -l < $filename)

echo "Number of Lines: $lines"

echo "Number of words: $(wc -w < $filename)"

echo "Number of characters: $(wc -m < $filename)"

echo "Number of bytes: $(wc -c < $filename)"

echo "Longest Line: $(wc -L < $filename)"

