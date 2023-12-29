require("theprimeagen.set")
require("theprimeagen.remap")

local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local yank_group = augroup('HighlightYank', {})
local autocmd = vim.api.nvim_create_autocmd

local function move_in_quickfix(char)
    function move()
        vim.api.nvim_command(string.format('normal! %s', char))
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<CR><C-w>p', true, false, true), 'n', false)
    end
    return move
end

autocmd("FileType", {
    pattern = "qf",
    callback = function()
        vim.keymap.set('n', 'j', move_in_quickfix('j'), { buffer = 0, noremap = true, silent = true })
        vim.keymap.set('n', 'k', move_in_quickfix('k'), { buffer = 0, noremap = true, silent = true })
    end,
})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
