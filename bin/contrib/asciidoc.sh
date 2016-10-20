#!/bin/sh

cat "$@" | /usr/bin/asciidoc -s -o - -
