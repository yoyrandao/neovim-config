vim.g.startify_custom_header = "startify#center(startify#fortune#cowsay())"

vim.g.startify_bookmarks = { {
	b = "~/.bashrc",
}, {
	v = "~/.config/nvim/init.lua",
} }

vim.g.startify_lists = {
	{
		type = "bookmarks",
		header = { "    Bookmarks" },
	},
	{
		type = "files",
		header = { "    Recent" },
	},
	{
		type = "dir",
		header = { "    Current -> " .. os.getenv("PWD") },
	},
}

vim.g.startify_skiplist = { "/.git/", "/node_modules/" }
