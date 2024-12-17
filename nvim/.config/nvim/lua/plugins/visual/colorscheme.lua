M = {
	"notken12/base46-colors",
	name = "base46",
	priority = 1000,
	lazy = false,
	config = function()
		local status_ok, _ = pcall(vim.cmd.colorscheme, "everblush")
		if not status_ok then
			return
		end
	end

}
return M
