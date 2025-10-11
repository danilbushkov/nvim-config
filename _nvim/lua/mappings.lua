local function nmap(key, command)
  vim.keymap.set("n", key, command)
end

-- nmap("<C-f>", "<cmd>Neotree toggle reveal<cr>")
-- nmap("<C-a>", "<cmd>Neotree reveal<cr>")
-- nmap("<C-b>", "<cmd>Neotree toggle reveal buffers right<cr>")
-- nmap("<C-s>", "<cmd>Neotree float git_status<cr>")
