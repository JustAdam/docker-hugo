#!/usr/bin/env bash
if [ -z "$HUGO_VERSION" ]; then
  echo Missing version to download
  exit 1
fi
wget https://github.com/spf13/hugo/releases/download/v"$HUGO_VERSION"/hugo_"$HUGO_VERSION"_linux_amd64.tar.gz
tar xvfz hugo_"$HUGO_VERSION"_linux_amd64.tar.gz
mv hugo_"$HUGO_VERSION"_linux_amd64/hugo_"$HUGO_VERSION"_linux_amd64 hugo
mv hugo_"$HUGO_VERSION"_linux_amd64/LICENSE.md LICENSE.md
rm -rf hugo_"$HUGO_VERSION"_linux_amd64*
