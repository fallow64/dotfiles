return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({})
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- rust provided by rustaceanvim
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "gopls",
          "astro",
          "clangd",
          "cssls",
          "html",
          "pyright",
          "zls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      local opts = { capabilities = capabilities }

      lspconfig.lua_ls.setup(opts)
      lspconfig.tsserver.setup(opts)
      lspconfig.gopls.setup(opts)
      lspconfig.astro.setup(opts)
      lspconfig.clangd.setup(opts)
      lspconfig.cssls.setup(opts)
      lspconfig.html.setup(opts)
      lspconfig.pyright.setup(opts)
      lspconfig.zls.setup({
        capabilities = capabilities,
        cmd = { "/usr/bin/zls" },
        settings = {
          zls = {
            zig_exe_path = "/usr/bin/zls",
          },
        },
      })
    end,
  },
}
