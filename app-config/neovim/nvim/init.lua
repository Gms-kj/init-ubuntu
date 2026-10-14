require("config.options")
require("config.keymaps")
require("config.autocmds")

-- 文件树显示
vim.g.netrw_banner = 0      -- 去掉顶部横幅
vim.g.netrw_liststyle = 3       -- 树状显示模式
vim.g.netrw_winsize = 25     -- 窗口宽度占25%
vim.g.netrw_browse_split = 4        -- 在之前的窗口打开文件
vim.g.netrw_altv = 0        -- 垂直分割时在右侧打开
