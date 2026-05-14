-- Telescope fuzzy finder
vim.pack.add({
	{
		src = "https://github.com/nvim-telescope/telescope.nvim",
		version = "v0.2.2",
	},
	-- Native implementation of sorter (= faster)
  {
    src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
		version = "main",
  },	
})
-- Build fzf-native (vim.pack doesn't execute build automatically)
vim.fn.system({"make", "-C", vim.fn.stdpath("data") .. "/site/pack/core/opt/telescope-fzf-native.nvim"})
require("telescope").setup{
	defaults = {
		file_ignore_patterns = {
			"node_modules"
		}
	}
}
require("telescope").load_extension("fzf")