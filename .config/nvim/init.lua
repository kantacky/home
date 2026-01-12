-- クリップボードを同期
vim.opt.clipboard = "unnamedplus"
-- 行番号を表示
vim.opt.number = true
-- タブ文字の代わりにスペースを使う
vim.opt.expandtab = true
-- プログラミング言語に合わせて適切にインデントを自動挿入
vim.opt.smartindent = true
-- 各コマンドやsmartindentで挿入する空白の量
vim.opt.shiftwidth = 4
-- Tabキーで挿入するスペースの数
vim.opt.softtabstop = 4

require("config.lazy")

-- Keymap
vim.g.mapleader = " "
vim.keymap.set("n", "<Leader>\\", ":vs<Enter>")
vim.keymap.set("n", "<Leader>-", ":sp<Enter>")

