vim.cmd [[set et ts=2 sts=-1 sw=2]]
vim.cmd [[colorscheme catppuccin]]

vim.pack.add {
  -- Language engine & snippets
  { src = "https://github.com/ms-jpq/coq_nvim", name = "coq.nvim" },
  { src = "https://github.com/ms-jpq/coq.artifacts" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },

  -- Tabline
  { src = "https://github.com/nvim-lualine/lualine.nvim" },

  -- LLM support
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/olimorris/codecompanion.nvim" },

  -- File tree explorer
  { src = "https://github.com/ms-jpq/chadtree", name = "chadtree.nvim" }
}

local coq = require("coq")
coq.Now()

local lualine = require("lualine")
lualine.setup {
}

local cc = require("codecompanion")
cc.setup {
  adapters = {
    http = {
      huggingface = function()
        return require("codecompanion.adapters").extend("huggingface", {
          env = {
            api_key = vim.env.HF_API_KEY
          }
        })
      end
    }
  },
  interactions = {
    chat = {
      adapter = {
        name = "huggingface",
        model = "Qwen/Qwen3.5-397B-A17B"
      }
    },
    cmd = {
      adapter = "huggingface"
    }
  }
}

