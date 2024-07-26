
return {
  --Markdown
  {
    "iamcco/markdown-preview.nvim",
    build = function() vim.fn["mkdp#util#install"]() end,
    ft = { "markdown" },
    config = function()
      require("plugins.config.markdown_preview")
    end,
  },
  -- {
  --   'sheerun/vim-polyglot',
  --   ft = {'markdown'}
  -- },
  --

  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
}, -- 
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        "rust-analyzer", "pyright",
        "marksman",
  			"html-lsp", "css-lsp" , "prettier"
  		},
  	},
  },
 {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css",
     -- Experimental 
       "markdown", "markdown_inline",
  }
},
  {
    "rust-lang/rust.vim",
    ft="rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  }
}
