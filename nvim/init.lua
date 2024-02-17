if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd
require("puffcatz.activate").setup({
	position = "bottom-right",
})
require("config.lazy")
