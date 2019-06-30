default: readme.md

readme.md: doc.lua
	./doc.lua $< $@

test:
	rm -f readme.md && ./doc.lua doc.lua readme.md && test -e readme.md
	rm -f readme.md && ./doc.lua doc.lua > readme.md && test -e readme.md
	rm -f readme.md && ./doc.lua - readme.md < doc.lua && test -e readme.md
	rm -f readme.md && ./doc.lua - - < doc.lua > readme.md && test -e readme.md
