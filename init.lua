--[[

git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

--]]
-- plugins goes first so all settings take effect correctly
require('plugins')

require('settings')
require('maps')
