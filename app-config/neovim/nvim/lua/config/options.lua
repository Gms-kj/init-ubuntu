local opt = vim.opt

-- -------------- 基本设置 ------------- --
opt.encoding = "utf-8"  -- 设置编码为UTF-8
opt.number = true       -- 显示行号
opt.relativenumber = true   -- 显示相对行号
opt.tabstop = 4     -- 设置制表符宽度为4个空格
opt.shiftwidth = 4     -- 设置自动缩进宽度为4个空格
opt.expandtab = true   -- 将制表符转换为空格
opt.smartindent = true -- 启用智能缩进
opt.cursorline = true   -- 高亮当前行
opt.colorcolumn = "80"  -- 在第80列显示竖线
opt.wrap = true        -- 禁止自动换行
opt.termguicolors = true -- 启用终端颜色支持
opt.clipboard = "unnamedplus" -- 使用系统剪贴板
opt.ignorecase = true  -- 搜索时忽略大小写
opt.smartcase = true   -- 如果搜索模式中包含大写字母，则搜索区分大小写