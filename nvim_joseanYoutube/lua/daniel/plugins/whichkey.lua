local wk = require("which-key")
local conf = {
	window = {
		border = "double", -- none, single, double, shadow
		position = "bottom", -- bottom, top
	},
}
wk.setup(conf)
local opts = {
	mode = "n", -- Normal mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
}
wk.register(mappings, opts)
