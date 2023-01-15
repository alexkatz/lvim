lvim.builtin.treesitter.rainbow = {
	enable = true,
	extended_mode = false,
	colors = {
		"Gold",
		"Orchid",
		"DodgerBlue",
	},
	disable = { "html" },
}

lvim.builtin.treesitter.auto_install = true
lvim.builtin.treesitter.autotag.enable = true

lvim.builtin.treesitter.incremental_selection = {
	enable = true,
	keymaps = {
		init_selection = "<C-v>",
		node_incremental = "<C-v>",
		node_decremental = "<M-v>",
	},
}

lvim.builtin.treesitter.playground = {
	enable = true,
}

vim.api.nvim_create_autocmd("FileType", {
	pattern = "zsh",
	callback = function()
		-- let treesitter use bash highlight for zsh files as well
		require("nvim-treesitter.highlight").attach(0, "bash")
	end,
})
