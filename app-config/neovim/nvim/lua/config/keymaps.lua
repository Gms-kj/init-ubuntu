vim.g.mapleader = " " -- 设置空格为leader键

local keymap = vim.keymap

-- -------------- 文件操作 ------------- --
keymap.set({ "n", "i" }, "<C-s>", "<cmd>w<cr>", { desc = "保存文件" })
keymap.set({ "n", "i" }, "<C-q>", "<cmd>q<cr>", { desc = "退出文件" })
keymap.set({ "n", "i" }, "<C-w>", "<cmd>wq<cr>", { desc = "保存并退出文件" })
keymap.set({ "n", "i" }, "<C-n>", "<Esc>:e ", { desc = "新建文件" })

-- -------------- 文本编辑 ------------- --
keymap.set({ "n", "i" }, "<C-d>", "<cmd>t.<cr>", { silent = true, desc = "将当前行复制到下一行" })
keymap.set({ "n", "i" }, "<C-z>", "<cmd>undo<cr>", { silent = true, desc = "撤销" })
keymap.set({ "n", "i" }, "<C-r>", "<cmd>redo<cr>", { silent = true, desc = "重做" })
-- keymap.set("n", "<leader>q", "<cmd>q<cr>")  -- 退出文件
-- keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>") -- 取消高亮搜索
-- keymap.set("n", "<leader>e", "<cmd>edit<cr>")   -- 打开文件
-- keymap.set("n", "<leader>t", "<cmd>tabnew<cr>")  -- 新建标签页
-- keymap.set("n", "<leader>w", "<cmd>tabclose<cr>")  -- 关闭标签页
-- keymap.set("n", "<leader>n", "<cmd>tabnext<cr>")  -- 下一个标签页
-- keymap.set("n", "<leader>p", "<cmd>tabprevious<cr>")  -- 上一个标签页
-- keymap.set("n", "<leader>v", "<cmd>vsplit<cr>")  -- 垂直分割窗口
-- keymap.set("n", "<leader>h", "<cmd>split<cr>")  -- 水平分割窗口
-- keymap.set("n", "<leader>c", "<cmd>close<cr>")  -- 关闭当前窗口
-- keymap.set("n", "<leader>j", "<cmd>wincmd j<cr>")  -- 移动到下一个窗口
-- keymap.set("n", "<leader>k", "<cmd>wincmd k<cr>")  -- 移动到上一个窗口
