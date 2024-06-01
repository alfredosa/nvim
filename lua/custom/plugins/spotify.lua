-- ~/.config/nvim/lua/plugins.lua
return {
  {
    dir = '/Users/alfredosuarez/codehub/spotify.nvim',
    dependencies = {
      { 'MunifTanjim/nui.nvim' },
    },
    priority = 1,
    config = function()
      require('spotify').setup {
        floating_window = true,
        floating_window_opts = {
          border = 'rounded',
        },
      }

      -- Key mappings (optional)
      vim.api.nvim_set_keymap('n', '<leader>sp', ':lua require("spotify").play()<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>st', ':lua require("spotify").toggle_floating_window()<CR>', { noremap = true, silent = true })
    end,
  },
}
