local fb_actions = require('telescope').extensions.file_browser.actions

require('telescope').setup {
  extensions = {
    file_browser = {
      hijack_netrw = true,
      mappings = {
        ['n'] = {
          ['N'] = fb_actions.create,
        },
      },
    },
  },
  defaults = {
    mappings = {
      n = {
        ['q'] = require('telescope.actions').close,
      },
    },
  },
}

require('telescope').load_extension 'file_browser'
