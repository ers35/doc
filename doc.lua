#!/usr/bin/env lua

-- The author disclaims copyright to this source code.

--[[[
# doc

Generate documentation by extracting comments from a source file.

## Install
`luarocks install ers35/doc`
--]]

--[[[
## Usage

`usage: doc [in] [out]`

Generate this readme in four ways:

Input from a file and output to a file: `doc doc.lua readme.md`

Input from a file and output to stdout: `doc doc.lua > readme.md`

Input from stdin and output to a file: `doc - readme.md < doc.lua`

Input from stdin and output to stdout: `doc - - < doc.lua > readme.md`
--]]

local inpath = arg[1]
local outpath = arg[2] or "-"

if not (inpath and outpath) then
	local version = "0.0.1"
	io.stderr:write("doc ", version, "\n")
	io.stderr:write([[
usage: doc [in] [out]
]])
	os.exit(1)
end

if inpath ~= "-" then
	io.input(inpath)
end

if outpath ~= "-" then
	io.output(outpath)
end

--[===[[
Block comments of the form `--[[[`, `--[=[[`, `--[==[[`, etcetera are extracted.

See [this file](doc.lua) for example usage.
]]
--]===]
for match in io.read("*all"):gmatch("--%[=-%[%[%s?(.-)--%]%]") do
	io.write(match, "\n")
end
