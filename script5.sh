#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Priyanshi

echo "======================================"
echo " Open Source Manifesto Generator"
echo "======================================"
echo ""

# Take user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date)
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto
echo "--------------------------------------" > $OUTPUT
echo " Open Source Manifesto" >> $OUTPUT
echo "--------------------------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL daily. For me, freedom means $FREEDOM. I would like to build $BUILD and share it with everyone. Open source helps people learn, grow, and collaborate together." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

cat $OUTPUT
