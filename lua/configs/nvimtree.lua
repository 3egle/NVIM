local tree_status, nvimtree = pcall(require, "nvim-tree")
if not tree_status then
	return
end

local options = {
	disable_netrw = true,
	hijack_netrw = true,
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	open_on_setup = true,
	ignore_ft_on_setup = { "alpha" },
	hijack_cursor = true,
	hijack_unnamed_buffer_when_opening = true,
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	view = {
		adaptive_size = true,
		side = "left",
		width = 20,
		hide_root_folder = true,
	},
	git = {
		enable = false,
		ignore = true,
	},
	filesystem_watchers = {
		enable = true,
	},
	actions = {
		open_file = {
			quit_on_open = false,
			resize_window = true,
		},
	},
	renderer = {
		highlight_git = false,
		highlight_opened_files = "none",

		indent_markers = {
			enable = false,
		},

		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
				git = false,
			},

			glyphs = {
				default = "",
				symlink = "",
				folder = {
					default = "",
					empty = "",
					empty_open = "",
					open = "",
					symlink = "",
					symlink_open = "",
					arrow_open = "",
					arrow_closed = "",
				},
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
}

nvimtree.setup(options)
