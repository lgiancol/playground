chmod +x#!/bin/sh

echo Displaying Git configuration
git config --list
echo Updating Git configuration
git config pull.ff only
echo Displaying Git configuration
git config --list

echo Displaying port visibility
gh codespace ports -c $CODESPACE_NAME
echo Updating port visibility
gh codespace ports visibility 3000:public 8080:public -c $CODESPACE_NAME
echo Displaying port visibility
gh codespace ports -c $CODESPACE_NAME
