local search = {}

search.word_under_cursor = function ()
	local word = vim.fn.expand("<cword>")
	if word and #word > 0 then
		vim.cmd('silent grep ' .. word .. ' -r . --exclude-dir=dist')
		vim.cmd('copen')
	else
		print("No word under cursor")
	end
end

search.input_word = function ()
	local word = vim.fn.input("Search: ")
	if word and #word > 0 then
		vim.cmd('silent grep ' .. word .. ' -r . --exclude-dir=dist')
		vim.cmd('copen')
	end
end

return search
