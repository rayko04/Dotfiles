-- Enable line numbers
vim.opt.number = true

-- Enable syntax highlighting
vim.cmd("syntax on")

-- Enable true color support (better colors)
vim.opt.termguicolors = true

-- Show matching brackets
vim.opt.showmatch = true

-- Enable mouse support
vim.opt.mouse = "a"

-- Better indentation
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4


-- Auto format rust files on saving
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.rs",
    callback = function()
        vim.cmd("silent !rustfmt %")
    end,
})

-- Silence file changed messages and reloads buffer
--vim.api.nvim_create_autocmd("BufWritePost", {
  --  pattern = "*.rs",
    --callback = function()
      --  vim.cmd("edit")
--    end,
--})
