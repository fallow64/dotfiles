-- default vim
vim.cmd("map <Home> ^")

-- neo-tree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")

-- telescope
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})

-- none-ls (null-ls?)
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- todo-comments
vim.keymap.set("n", "<leader>ft", function()
  vim.cmd("TodoTelescope")
end, { desc = "Find all todos in current directory." })

-- markdown-preview
vim.keymap.set("n", "<leader>m", function()
  vim.cmd("MarkdownPreviewToggle")
end, { desc = "Toggle markdown preview server" })

-- lsp keybinds
-- only runs these after LSPs have been attached
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  desc = "LSP actions",
  callback = function(ev)
    -- buffer local mappings
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
  end,
})
