# doc

Generate documentation by extracting comments from a source file.

## Install
`luarocks install ers35/doc`

## Usage

`usage: doc [in] [out]`

Generate this readme in four ways:

Input from a file and output to a file: `doc doc.lua readme.md`

Input from a file and output to stdout: `doc doc.lua > readme.md`

Input from stdin and output to a file: `doc - readme.md < doc.lua`

Input from stdin and output to stdout: `doc - - < doc.lua > readme.md`

Block comments of the form `--[[[`, `--[=[[`, `--[==[[`, etcetera are extracted.

See [this file](doc.lua) for example usage.

