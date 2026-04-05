local tokyo_night_theme = require("yatline-tokyo-night"):setup("night") -- or moon/storm/day

require("full-border"):setup {
	type = ui.Border.ROUNDED,
}

require("yatline"):setup({
	section_separator = { open = "", close = "" },
	part_separator = { open = "", close = "" },
	inverse_separator = { open = "", close = "" },
	theme = tokyo_night_theme,
})

th.git = th.git or {}
th.git.unknown		= ui.Style():fg("#c678dd"):bold()
th.git.modified		= ui.Style():fg("#e5c07b"):bold()
th.git.added		= ui.Style():fg("#98c379"):bold()
th.git.untracked	= ui.Style():fg("#61afef"):bold()
th.git.ignored		= ui.Style():fg("#5c6370"):bold()
th.git.deleted		= ui.Style():fg("#e06c75"):bold()
th.git.updated		= ui.Style():fg("#56b6c2"):bold()
th.git.clean		= ui.Style():fg("#98c379"):bold()

th.git.unknown_sign		= ""
th.git.modified_sign	= "M"
th.git.added_sign		= "A"
th.git.untracked_sign	= ""
th.git.ignored_sign		= ""
th.git.deleted_sign		= "D"
th.git.updated_sign		= "U"
th.git.clean_sign		= ""

require("git"):setup {
	order = 1500,
}
