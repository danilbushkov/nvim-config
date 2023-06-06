function nmap(key, command)
	vim.keymap.set("n", key, command)
end


nmap("<C-p>", "<cmd>NeoTreeFocusToggle<cr>")
nmap("<C-a>", "<cmd>NeoTreeFocus<cr>")
