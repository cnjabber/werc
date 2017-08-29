#!/bin/sh

exec rst2html5 --template=$(dirname $(realpath $0))/rst-template.txt "$@"
