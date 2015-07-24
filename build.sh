#!/usr/bin/env bash
cd $(dirname $0)

file=$(perl -e '
    use JSON::PP; local $/;
    $info = decode_json <>;
    print $info->{name}."_".$info->{version}' \
    src/info.json)

mkdir -p build
rm -rf build/*
git archive HEAD:src --prefix=$file/ -9 -o build/$file.zip

# Include LICENSE.md with release
cd build
mkdir -p $file
cp ../LICENSE.md $file/LICENSE.md
zip -q -9 $file.zip $file/LICENSE.md
rm -rf $file
