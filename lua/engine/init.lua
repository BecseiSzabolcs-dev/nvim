require("engine.remap")
require("engine.packer")
require("engine.after.plugin.colors")
require("engine.after.plugin.treesitter") 
-- require("engine.after.plugin.harpoon") 
require("engine.after.plugin.telescope")
require("engine.after.plugin.fugitve") 

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    ColorMyPencils()
  end,
})
vim.api.nvim_create_autocmd("User", {
  pattern = "PackerComplete",
  callback = function()
    print("Packer just finished installing/updating!")
      
    ColorMyPencils()
  end
})
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local git_root = vim.fn.systemlist("git -C " .. vim.fn.expand('%:p:h') .. " rev-parse --show-toplevel")[1]
    if vim.v.shell_error == 0 and git_root ~= vim.fn.getcwd() then
      vim.cmd("cd " .. git_root)
    end
  end
})




