local colemak_keys = {
	{ "<c-k>",  "<Cmd>TmuxNavigateLeft<CR>" },
	{ "<c-n>",  "<Cmd>TmuxNavigateDown<CR>" },
	{ "<c-e>",  "<Cmd>TmuxNavigateUp<CR>" },
	{ "<c-i>",  "<Cmd>TmuxNavigateRight<CR>" },
	{ "<c-\\>", "<Cmd>TmuxNavigatePrevious<CR>" },
};
local qwerty_keys = {
	{ "<c-h>",  "<Cmd>TmuxNavigateLeft<CR>" },
	{ "<c-j>",  "<Cmd>TmuxNavigateDown<CR>" },
	{ "<c-k>",  "<Cmd>TmuxNavigateUp<CR>" },
	{ "<c-l>",  "<Cmd>TmuxNavigateRight<CR>" },
	{ "<c-\\>", "<Cmd>TmuxNavigatePrevious<CR>" },
};

local function get_keys()
	if (vim.g.use_colemak) then
		return colemak_keys;
	else
		return qwerty_keys;
	end
end

M = {
	"christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
	},
	keys = get_keys()
}
vim.g.tmux_navigator_no_mappings = true
return M
