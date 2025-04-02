require("use_colemak")
require("lazy_nvim")
require("mappings")
require("options")

require("helpers/better_cd")
require("helpers/buffer_close")

if (vim.g.use_colemak) then
	vim.keymap.del('n', '<C-n>')
	vim.keymap.set('n', '<C-s>', '<C-d>')
	vim.keymap.set('n', '<C-l>', '<C-u>')
	vim.opt.langmap =
	"feprbtjyluuiyo\\;prssdtfkhnjekilo\\;xzcxdcvvzbmnhmFEPRBTJYLUUIYO\\:PRSSDTFKHNJEKILO\\:XZCXDCVVZBMNHM"
end

-- vim.keymap.del('n', '<C-k>');
-- vim.keymap.del('n', '<C-n>');
-- vim.keymap.del('n', '<C-e>');
-- vim.keymap.del('n', '<C-i>');
