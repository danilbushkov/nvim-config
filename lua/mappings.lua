function nmap(key, command)
  vim.keymap.set("n", key, command)
end

nmap("<C-p>", "<cmd>Neotree focus toggle<cr>")
nmap("<C-a>", "<cmd>Neotree focus<cr>")
