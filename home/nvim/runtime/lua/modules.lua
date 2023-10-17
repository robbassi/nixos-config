local modules = {}

-- Force a module to be reloaded, by clearing it from the module cache, and 
-- requiring it.
modules.reload = function(module_name)
	package.loaded[module_name] = nil
	return require(module_name)
end

return modules
