#!/bin/sh

cd $(dirname $0)

repo_dir="$(git rev-parse --show-toplevel)"

echo "Installing dotfiles..."

for dir in *; do
  if [ -f $dir/install.sh ]; then
    echo "Installing $dir configs..."
    . $dir/install.sh
  fi
done
