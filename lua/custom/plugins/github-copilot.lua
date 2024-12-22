return {
  {
    'github/copilot.vim',
    config = function()
      -- Enable or disable suggestions and panels based on conditions
      vim.g.copilot_suggestion_enabled = not vim.g.ai_cmp
      vim.g.copilot_auto_trigger = true
      vim.g.copilot_keymap = {
        accept = false, -- handled by nvim-cmp or other plugins
        next = '<M-]>',
        prev = '<M-[>',
      }

      -- Filetypes where Copilot should be enabled
      vim.g.copilot_filetypes = {
        markdown = true,
        help = true,
      }
    end,
  },
}
