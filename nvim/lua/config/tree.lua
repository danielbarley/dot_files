local cb = require("nvim-tree.config").nvim_tree_callback

require("nvim-tree").setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "f",
        symlink = "l",
        folder = {
          arrow_open = ">",
          arrow_closed = "|",
          default = "D",
          open = "O",
          empty = "E",
          empty_open = "EO",
          symlink = "L",
          symlink_open = "LO",
        },
        git = {
          unstaged = "~",
          staged = "+",
          unmerged = "u",
          renamed = "->",
          untracked = "?",
          deleted = "X",
          ignored = "I",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "@",
      info = "I",
      warning = "W",
      error = "E",
    },
  },
  view = {
    width = 30,
    side = "left",
    mappings = {
			list = {
				{key = {"l", "<CR>", "o"}, cb = cb "edit"},
				{key = "h", cb = cb "close_node"},
				{key = "v", cb = cb "vsplit"},
				{key = "s", cb = cb "split"},
			}
    },
  },
}
