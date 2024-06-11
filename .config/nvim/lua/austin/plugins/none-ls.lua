--- Returns the on_attach function that should be passed to none-ls
local setup_auto_formatting = function()
  local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
  -- none-ls is a fork of null-ls, but is still named null-ls???
  -- setup format-on-save
  return function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
          vim.lsp.buf.format({ async = false })
        end,
      })
    end
  end
end

return {
  "nvimtools/none-ls.nvim",
  config = function()
    -- none-ls is a fork of null-ls, but is still named null-ls???
    local null_ls = require("null-ls")

    null_ls.setup({
      -- setup format-on-save
      on_attach = setup_auto_formatting(),
      sources = {
        null_ls.builtins.formatting.stylua, -- lua
        null_ls.builtins.formatting.gofmt,  -- go
        null_ls.builtins.formatting.prettier.with({
          filetypes = {
            "javascript",
            "typescript",
            "css",
            "scss",
            "html",
            "json",
            "yaml",
            "markdown",
            "graphql",
            "md",
            "astro",
          },
        }),
      },
    })
  end,
}
