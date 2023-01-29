  local home = os.getenv('HOME')
  local db = require('dashboard')
 db.setup({
    theme = 'hyper',
    config = {
      packages = { enable = false },
      week_header = {
       enable = true,
      },
      shortcut = {
        { desc = ' Update', group = '@property', action = 'PlugUpdate', key = 'u' },
        {
          desc = ' Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
            desc = ' File-Tree',
            action = 'NvimTreeToggle',
            key = 'CTRL f'
        },
      },
    },
  })
