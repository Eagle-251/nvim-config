
local status_ok, luasnip = pcall(require, "luasnip.loaders.from_vscode")
if not status_ok then
	return
end

luasnip.lazy_load()
