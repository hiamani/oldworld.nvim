local p = require("oldworld.palette")

local hl = {
	-- menu
	BlinkCmpMenu = { fg = p.subtext2, bg = p.gray0 },
	BlinkCmpMenuBorder = { fg = p.gray3, bg = p.gray0 },
	BlinkCmpMenuSelection = { fg = p.fg, bg = p.gray3, bold = true },
	BlinkCmpScrollBarThumb = { bg = p.gray4 },
	BlinkCmpScrollBarGutter = { bg = p.gray1 },

	-- label
	BlinkCmpLabel = { fg = p.subtext2, bg = p.none },
	BlinkCmpLabelMatch = { fg = p.blue, bold = true },
	BlinkCmpLabelDeprecated = { fg = p.subtext4, strikethrough = true },
	BlinkCmpLabelDetail = { fg = p.subtext4 },
	BlinkCmpLabelDescription = { fg = p.subtext4, italic = true },
	BlinkCmpSource = { fg = p.subtext4, italic = true },
	BlinkCmpGhostText = { fg = p.subtext4, italic = true },

	-- doc
	BlinkCmpDoc = { fg = p.subtext1, bg = p.bg_dark },
	BlinkCmpDocBorder = { fg = p.gray3, bg = p.bg_dark },
	BlinkCmpDocSeparator = { fg = p.gray3, bg = p.bg_dark },
	BlinkCmpDocCursorLine = { bg = p.gray2 },

	-- signature
	BlinkCmpSignatureHelp = { fg = p.subtext1, bg = p.bg_dark },
	BlinkCmpSignatureHelpBorder = { fg = p.gray3, bg = p.bg_dark },
	BlinkCmpSignatureHelpActiveParameter = { fg = p.yellow, bold = true },

	BlinkCmpKind = { fg = p.subtext3 },
}

-- kind icons, grouped by semantics
local kinds = {
	[p.blue] = { "Function", "Method", "Constructor" },
	[p.yellow] = { "Class", "Struct", "Interface", "Enum", "TypeParameter" },
	[p.cyan] = { "Variable", "Field", "Property", "EnumMember" },
	[p.magenta] = { "Keyword", "Operator", "Snippet" },
	[p.green] = { "Module", "File", "Folder", "Reference" },
	[p.orange] = { "Constant", "Value", "Unit", "Event" },
	[p.subtext3] = { "Text", "Color" },
}

for color, list in pairs(kinds) do
	for _, kind in ipairs(list) do
		hl["BlinkCmpKind" .. kind] = { fg = color }
	end
end

return hl
