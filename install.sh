#!/bin/sh

echo "Installing dotfiles..."

for dir in *; do
  if [ -f $dir/install.sh ]; then
    echo "Installing $dir configs..."
    $dir/install.sh
  fi
done
