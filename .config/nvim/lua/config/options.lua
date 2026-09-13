vim.opt.mouse = ""

-- Term GUI colors
vim.opt.termguicolors = true

-- Tabs and indentation
vim.opt.tabstop = 8 -- 8 spaces for tabs
vim.opt.shiftwidth = 4 -- Indentation width
vim.opt.expandtab = true -- Use spaces, not tabs
vim.opt.autoindent = true

-- Line wrapping
vim.opt.wrap = false
vim.opt.linebreak = false

-- Performance
vim.opt.timeoutlen = 300 -- Faster key sequence timeout
vim.opt.ttimeoutlen = 50 -- Terminal key sequence timeout
vim.opt.updatetime = 250 -- Faster CursorHold events
vim.opt.redrawtime = 1500

-- LSP diagnostics (undercurl-ed error underlines)
vim.diagnostic.config({
  underline = true,
})
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#a06a6a" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = "#9a8268" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = "#6f8a8a" })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = "#6f8f6f" })
  end,
})

-- Line highlight
vim.o.cursorline = true
vim.o.cursorlineopt = "number"
