#!/bin/bash
ART="$(/bin/cat "$@" | /bin/sed 's/\(\[[^[]*\]([a-zA-Z0-9_/-]*\)\.\(md\|rst\|asciidoc\))/\1)/g')"
ART_FALLBACK="$(/bin/cat <<< "$ART"; echo -e '\n(fallback rendering with pandoc -f markdown_github)\n')"
/usr/bin/pandoc -f markdown_mmd+backtick_code_blocks -t html5 <<< "$ART" \
   || /usr/bin/pandoc -f markdown_github -t html5 $1 <<< "$ART_FALLBACK"
