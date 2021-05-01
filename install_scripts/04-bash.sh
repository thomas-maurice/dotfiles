#!/bin/bash

sudo apt-get install -y bash

if ! [ -d ~/.asdf ]; then git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0; fi

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

cp tool-versions ~/.tool-versions

for plugin in $(awk '{ print $1}' ~/.tool-versions); do
    if ! asdf plugin-list | grep -q "${plugin}" ; then
        asdf plugin-add "${plugin}";
    fi;
done

(cd ~ && asdf install)

cp bashrc ~/.bashrc
cp -r bashrc.d ~