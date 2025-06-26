return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "clangd", "marksman" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      local conda_prefix = os.getenv("CONDA_PREFIX")
      local python_path = conda_prefix and (conda_prefix .. "/bin/python") or "/usr/bin/python3"

      lspconfig.lua_ls.setup({
        capabilities = capabilties
      })
      lspconfig.marksman.setup({
        capabilities = capabilties
      })
      lspconfig.clangd.setup({
        capabilities = capabilties
      })
      lspconfig.pyright.setup({
        settings = {
          python = {
            pythonPath = python_path
          }
        }
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}

