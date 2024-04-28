require("luasnip.loaders.from_vscode").load({ paths = { "~/.config/nvim/lua/snippets/" } })
require("luasnip.loaders.from_vscode").lazy_load()

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta

--<C-k> to expand
vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
--<C-l> to jump forward
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
--<C-h> to jump backward
vim.keymap.set({"i", "s"}, "<C-H>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})

ls.add_snippets("lua", {
    s("hello", {
        t('print("Hello, world!")')
    })
})

--[[
ls.add_snippets("cpp", {
    s("main", {
        t('int main(int argc, char **argv) {'),
        t('    $0'),
        t('    return 0;'),
        t('}')
    })
})
]]--
