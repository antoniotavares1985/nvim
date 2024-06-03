return {
	'dense-analysis/ale',
	config = function()
		-- Configuration goes here.
		local g = vim.g

		g.ale_completion_enabled = 1
		g.ale_completion_autoimport = 1
		g.omnisharp = 1

		g.ale_linters = {
			cs = { 'dotnet-format' },
			lua = {'lua_language_server'}
		}
	end
}

