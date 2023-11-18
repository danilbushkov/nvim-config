function nmap(key, command)
  vim.keymap.set("n", key, command)
end

nmap("<C-f>", "<cmd>Neotree toggle<cr>")
nmap("<C-a>", "<cmd>Neotree focus<cr>")
nmap("<C-b>", "<cmd>Neotree toggle focus buffers right<cr>")
nmap("<C-s>", "<cmd>Neotree float git_status<cr>")
