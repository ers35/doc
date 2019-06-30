package = "doc"
version = "scm-1"
source = {
	url = "git://github.com/ers35/doc"
}
description = {
	summary = "Generate documentation by extracting comments from a source file.",
	homepage = "https://github.com/ers35/doc",
	license = "CC0",
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {},
	install = {
		bin = {
			["doc"] = "doc.lua",
		},
	},
}
