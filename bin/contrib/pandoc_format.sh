#!/bin/bash
ART="$(/bin/cat "$@" | /bin/sed 's/\(\[.*\](.*\)\.md)/\1)/g')"
/usr/bin/pandoc -f markdown_mmd -t html5 <<< "$ART" \
   || /usr/bin/pandoc -f markdown_github -t html5 $1 <<< "$ART"
