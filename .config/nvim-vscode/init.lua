if vim.g.vscode then
   print("VSCode Neovim extension is working...")
else
   print("VSCode Neovim extension is not working")
end

require('plugins')
require('maps')
require('settings')
