#!/bin/bash
echo "Installing emacs to current user"
mkdir -p ~/.emacs.d/
cp -R ./dot.emacs.d/* ~/.emacs.d/
cp ./dot.emacs ~/.emacs

echo "Done."
echo ""
echo ""
