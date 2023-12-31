lvim.builtin.telescope.defaults.file_ignore_patterns = {
  -- ".git/",
  -- "target/",
  -- "docs/",
  "vendor/*",
  "%.lock",
  "__pycache__/*",
  "%.sqlite3",
  "%.ipynb",
  "node_modules/*",
  -- "%.jpg",
  -- "%.jpeg",
  -- "%.png",
  "%.svg",
  "%.otf",
  "%.ttf",
  "%.webp",
  ".dart_tool/",
  ".github/",
  ".gradle/",
  ".idea/",
  ".settings/",
  ".vscode/",
  "__pycache__/",
  "build/",
  "env/",
  "gradle/",
  "node_modules/",
  "%.pdb",
  "%.dll",
  "%.class",
  "%.exe",
  "%.cache",
  "%.ico",
  "%.pdf",
  "%.dylib",
  "%.jar",
  "%.docx",
  "%.met",
  "smalljre_*/*",
  ".vale/",
  "%.burp",
  "%.mp4",
  "%.mkv",
  "%.rar",
  "%.zip",
  "%.7z",
  "%.tar",
  "%.bz2",
  "%.epub",
  "%.flac",
  "%.tar.gz",
}

local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults = {
  -- layout_config = {
  --   width = 0.70,
  --   height = 0.90,
  --   prompt_position = "top",
  --   preview_cutoff = 200,
  --   horizontal = { mirror = false },
  --   vertical = { mirror = false },
  -- },
  find_command = {
    "rg",
    "--no-heading",
    "--with-filename",
    "--line-number",
    "--column",
    "--smart-case",
  },
  -- prompt_prefix = " ",
  -- selection_caret = " ",
  -- entry_prefix = "  ",
  -- initial_mode = "insert",
  -- selection_strategy = "reset",
  -- sorting_strategy = "descending",
  -- layout_strategy = "horizontal",
  -- file_sorter = require("telescope.sorters").get_fuzzy_file,
  -- file_ignore_patterns = {},
  -- generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
  -- path_display = {},
  -- winblend = 0,
  -- border = {},
  -- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  -- color_devicons = true,
  -- use_less = true,
  -- set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
  -- file_previewer = require("telescope.previewers").vim_buffer_cat.new,
  -- grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
  -- qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
  -- buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,

  -- mappings = {
  --   i = {
  --     ["<C-j>"] = actions.move_selection_next,
  --     ["<C-k>"] = actions.move_selection_previous,
  --     ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
  --     ["<esc>"] = actions.close,
  --     ["<CR>"] = actions.select_default + actions.center,
  --   },
  --   n = {
  --     ["<C-j>"] = actions.move_selection_next,
  --     ["<C-k>"] = actions.move_selection_previous,
  --     ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
  --   },
  -- },
  vimgrep_arguments = {
    "rg",
    "--color=never",
    "--no-heading",
    "--with-filename",
    "--line-number",
    "--column",
    "--smart-case",
    "--no-ignore",
    "-u"
  }
}

lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,

    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,

    ["<C-b>"] = actions.results_scrolling_up,
    ["<C-f>"] = actions.results_scrolling_down,

    ["<C-c>"] = actions.close,

    ["<Down>"] = actions.move_selection_next,
    ["<Up>"] = actions.move_selection_previous,

    ["<CR>"] = actions.select_default,
    ["<C-s>"] = actions.select_horizontal,
    ["<C-v>"] = actions.select_vertical,
    ["<C-t>"] = actions.select_tab,

    ["<c-d>"] = require("telescope.actions").delete_buffer,

    -- ["<C-u>"] = actions.preview_scrolling_up,
    -- ["<C-d>"] = actions.preview_scrolling_down,

    -- ["<Tab>"] = actions.close,
    -- ["<S-Tab>"] = actions.close,
    --
    ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
    ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
    ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
    ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
    ["<C-l>"] = actions.complete_tag,
    ["<C-h>"] = actions.which_key, -- keys from pressing <C-h>
    ["<esc>"] = actions.close,
  },
  -- for normal mode
  n = {
    ["<esc>"] = actions.close,
    ["<CR>"] = actions.select_default,
    ["<C-x>"] = actions.select_horizontal,
    ["<C-v>"] = actions.select_vertical,
    ["<C-t>"] = actions.select_tab,
    ["<C-b>"] = actions.results_scrolling_up,
    ["<C-f>"] = actions.results_scrolling_down,

    -- ["<Tab>"] = actions.close,
    -- ["<S-Tab>"] = actions.close,
    --
    ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
    ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
    ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
    ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

    ["j"] = actions.move_selection_next,
    ["k"] = actions.move_selection_previous,
    ["H"] = actions.move_to_top,
    ["M"] = actions.move_to_middle,
    ["L"] = actions.move_to_bottom,
    ["q"] = actions.close,
    ["dd"] = require("telescope.actions").delete_buffer,
    ["s"] = actions.select_horizontal,
    ["v"] = actions.select_vertical,
    ["t"] = actions.select_tab,

    ["<Down>"] = actions.move_selection_next,
    ["<Up>"] = actions.move_selection_previous,
    ["gg"] = actions.move_to_top,
    ["G"] = actions.move_to_bottom,

    ["<C-u>"] = actions.preview_scrolling_up,
    ["<C-d>"] = actions.preview_scrolling_down,

    ["<PageUp>"] = actions.results_scrolling_up,
    ["<PageDown>"] = actions.results_scrolling_down,

    ["?"] = actions.which_key,
  },
}

-- print(lvim.builtin.telescope.pickers.live_grep)

lvim.builtin.telescope.pickers.live_grep = {
  theme = "dropdown",
  previewer = true,
  layout_config = {
    height = 0.85,
    width = 0.75
  },
  layout_strategy = "horizontal",
  borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  prompt_prefix = " ",
  selection_caret = " ",
  entry_prefix = "  ",
  initial_mode = "insert",
  selection_strategy = "reset",
  sorting_strategy = "descending",
}

lvim.builtin.telescope.pickers.grep_string = {
  theme = "dropdown",
  previewer = true,
}

lvim.builtin.telescope.pickers.find_files = {
  theme = "dropdown",
  previewer = false,
}

lvim.builtin.telescope.pickers.buffers = {
  theme = "dropdown",
  previewer = false,
  initial_mode = "normal",
}

lvim.builtin.telescope.pickers.planets = {
  show_pluto = true,
  show_moon = true,
}

lvim.builtin.telescope.pickers.colorscheme = {
  enable_preview = true,
}

lvim.builtin.telescope.pickers.lsp_references = {
  theme = "dropdown",
  previewer = true,
  layout_config = {
    height = 0.85,
    width = 0.75
  },
  layout_strategy = "horizontal",
  borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  prompt_prefix = " ",
  selection_caret = " ",
  entry_prefix = "  ",
  initial_mode = "normal",
  selection_strategy = "reset",
  sorting_strategy = "descending",
}

lvim.builtin.telescope.pickers.lsp_definitions = {
  theme = "dropdown",
  previewer = true,
  layout_config = {
    height = 0.85,
    width = 0.75
  },
  layout_strategy = "horizontal",
  borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  prompt_prefix = " ",
  selection_caret = " ",
  entry_prefix = "  ",
  initial_mode = "normal",
  selection_strategy = "reset",
  sorting_strategy = "descending",
}

lvim.builtin.telescope.pickers.lsp_declarations = {
  theme = "dropdown",
  previewer = true,
  layout_config = {
    height = 0.85,
    width = 0.75
  },
  layout_strategy = "horizontal",
  borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  prompt_prefix = " ",
  selection_caret = " ",
  entry_prefix = "  ",
  initial_mode = "normal",
  selection_strategy = "reset",
  sorting_strategy = "descending",
}

lvim.builtin.telescope.pickers.lsp_implementations = {
  theme = "dropdown",
  previewer = true,
  layout_config = {
    height = 0.85,
    width = 0.75
  },
  layout_strategy = "horizontal",
  borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  prompt_prefix = " ",
  selection_caret = " ",
  entry_prefix = "  ",
  initial_mode = "normal",
  selection_strategy = "reset",
  sorting_strategy = "descending",
}

lvim.builtin.telescope.defaults.selection_caret = "  "
