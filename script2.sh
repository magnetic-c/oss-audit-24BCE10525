#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Priyanshi

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "--------------------------"

# Check if package exists
if command -v $PACKAGE &> /dev/null; then
    echo "$PACKAGE is installed."

    # Show version
    $PACKAGE --version
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Case statement
case $PACKAGE in
    git)
        echo "Git: A distributed version control system used for tracking code changes."
        ;;
    python)
        echo "Python: A powerful open-source programming language."
        ;;
    vlc)
        echo "VLC: A free multimedia player."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
