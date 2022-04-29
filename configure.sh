#! /bin/sh

script=$(readlink -f "$0")
dir=$(dirname "$script")


emacsd="$HOME/.emacs.d/"


if test -e $emacsd/init.el; then
    echo "Moving old configuration to init.el.old"
    mv $emacsd/init.el $emacsd/init.el.old
fi

echo "Symlinking init.el"
ln -s $dir/init.el $emacsd/init.el
echo "Done!"
