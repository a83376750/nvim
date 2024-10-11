if true then return end

vim.api.print("1234")
if pcall(require, "cmake-tools") then
    vim.keymap.set({"v", "n", "i", "t"}, "<F5>", "<cmd>wa<CR><cmd>if luaeval('require\"cmake-tools\".is_cmake_project()')|call execute('CMakeRun')|else|call execute('TermExec cmd=./run.sh')|endif<CR>", { silent = true })
    vim.keymap.set({"v", "n", "i", "t"}, "<F17>", "<cmd>wa<CR><cmd>if luaeval('require\"cmake-tools\".is_cmake_project()')|call execute('CMakeStopRunner')|call execute('CMakeStopExecutor')|else|call execute('TermExec cmd=\\<C-c>')|endif<CR>", { silent = true })
    vim.keymap.set("n", "cmr", "<cmd>wa<CR><cmd>if luaeval('require\"cmake-tools\".is_cmake_project()')|call execute('CMakeRun')|else|call execute('TermExec cmd=./run.sh')|endif<CR>", { silent = true, desc = 'CMakeRun' })
    vim.keymap.set("n", "cmb", "<cmd>wa<CR><cmd>if luaeval('require\"cmake-tools\".is_cmake_project()')|call execute('CMakeBuild')|else|call execute('TermExec cmd=make')|endif<CR>", { silent = true, desc = 'CMakeBuild' })
    vim.keymap.set("n", "cmc", "<cmd>wa<CR><cmd>if luaeval('require\"cmake-tools\".is_cmake_project()')|call execute('CMakeGenerate')|else|call execute('TermExec cmd=./configure')|endif<CR>", { silent = true, desc = 'CMakeGenerate' })
    vim.keymap.set("n", "cms", "<cmd>wa<CR><cmd>if luaeval('require\"cmake-tools\".is_cmake_project()')|call execute('CMakeStopRunner')|call execute('CMakeStopExecutor')|else|call execute('TermExec cmd=\\<C-c>')|endif<CR>", { silent = true, desc = 'CMakeStopRunner' })
else
    vim.keymap.set({"v", "n", "i", "t"}, "<F5>", "<cmd>wa<CR><cmd>call execute('TermExec cmd=./run.sh')<CR>", { silent = true })
    vim.keymap.set({"v", "n", "i", "t"}, "<F17>", "<cmd>wa<CR><cmd>call execute('TermExec cmd=\\<C-c>')<CR>", { silent = true })
end

-- 查找符号定义
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = 'Goto definition' })
-- 查找符号声明
vim.keymap.set("n", "gD", function()
    vim.lsp.buf.declaration()
end, { desc = 'Goto declaration' })

-- 开关 Inlay Hint
vim.keymap.set("n", "gsi", function()
    if vim.lsp.inlay_hint ~= nil then
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
    end
end, { desc = "Toggle inlay hint" })

-- 开关大纲视图
vim.keymap.set("n", "gso", "<cmd>AerialToggle!<CR>", { desc = "Toggle aerial outline" })
-- 查找类型定义
vim.keymap.set("n", "gy", "<cmd>Telescope lsp_type_definitions<CR>", { desc = 'Goto type definition' })
-- 查找所有引用
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", { desc = 'Find references' })
-- 查找函数实现
vim.keymap.set("n", "gY", "<cmd>Telescope lsp_implementations<CR>", { desc = 'Find implementations' })
-- 查看全部
vim.keymap.set("n", "gz", "<cmd>Trouble lsp toggle<CR>")
-- 查看类型继承图
vim.keymap.set("n", "gst", function ()
    vim.lsp.buf.typehierarchy("subtypes")
end, { desc = 'List derived class hierarchy' })
vim.keymap.set("n", "gsT", function ()
    vim.lsp.buf.typehierarchy("supertypes")
end, { desc = 'List base class hierarchy' })
-- 头文件/源文件跳转
vim.keymap.set({"v", "n"}, "go", "<cmd>ClangdSwitchSourceHeader<CR>", { silent = true })
vim.keymap.set({"v", "n"}, "gO", "<cmd>split | ClangdSwitchSourceHeader<CR>", { silent = true })
vim.keymap.set({"v", "n"}, "g<C-o>", "<cmd>vsplit | ClangdSwitchSourceHeader<CR>", { silent = true })

vim.keymap.set({'n'}, '<S-Tab>', '<C-o>')