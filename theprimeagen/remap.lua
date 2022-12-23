vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--join lines but keep cursor in place
vim.keymap.set("n", "J", "mzJ`z")
-- keep up down cursor in middle of screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- keep search term in middle of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- retain previous yank
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", function ()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--edit vimrc
vim.keymap.set("n", "<leader>ev" ,":vsplit $MYVIMRC<CR>" )
vim.keymap.set("n", "<leader>sv" ,":source $MYVIMRC<CR>" )
vim.keymap.set("n", "<leader>sm" ,":set fdm=marker<CR> " )

vim.keymap.set("i","<leader>mm", "<Esc>0i -[ ] ")
vim.keymap.set("n","<leader>mm", "0i -[ ] <Esc>0xpA")

vim.keymap.set("n", "<leader>ok", "0/[<CR>lct]OK0")
vim.keymap.set("n", "<leader>ng", "0/[<CR>lct]XX0")
vim.keymap.set("n", "<leader>td", "0/[<CR>lct]<Space>0")
vim.keymap.set("n", "<leader>mm", "0i- [ ] 0")

-- remap escaping insert mode

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "<Leader>e",  "<Esc>")
vim.keymap.set({"n","i"}, "<Leader><Leader>","<Esc>")
--vim.keymap.set("n", "<Leader><Leader>","<Esc>")


-- remap window movement
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")

-- chg file using habits from vscode
vim.keymap.set("n", "<C-2>", "<C-w>l")
vim.keymap.set("n", "<C-1>", "<C-w>h")

--window widening
vim.keymap.set("n", " <leader>s", "5<")
vim.keymap.set("n", " <leader>b", "5>")


-- "open tab
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>")


-- pair matching

vim.keymap.set("i", "{<CR>", "{<CR>}<Esc>0ko")
vim.keymap.set("i", "{{"   , "{}<Left>")

vim.keymap.set("i", "(<CR>", "(<CR>)<Esc>0")
vim.keymap.set("i", "(("   , "()<Left>")

vim.keymap.set("i", "[<CR>", "[<CR>]<Esc>0")
vim.keymap.set("i", "[[",    "[]<Left>")

vim.keymap.set("i", "''"   ,"''<Left>")
vim.keymap.set("i", "\"\"" ,"\"\"<Left>")




