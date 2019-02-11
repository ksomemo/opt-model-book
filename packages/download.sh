#!/bin/bash
pip download --no-deps "ortoolpy==0.2.22"
pip download --no-deps "japanmap==0.0.16"
pip download --no-deps "dual==0.0.8"

package_names=(ortoolpy japanmap dual)
for p in ${package_names[@]}; do
    echo $p

    rm -rf "$p"
    tar xf "$p"*.tar.gz
    rm -f "$p"*.tar.gz
    mv "$p"* "$p"

    cp .gitignore "$p"/
done

