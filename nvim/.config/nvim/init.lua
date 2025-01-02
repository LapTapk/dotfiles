require('config.default')
require('config.lazy')

local function require_all(dir) 
    local fd = vim.loop.fs_scandir(vim.fn.stdpath('config') .. "/lua/" .. dir)
    for name in
      function() return vim.loop.fs_scandir_next(fd) end
      do 
          local ndir = dir:gsub("/", ".")
          require(ndir .. '.' .. name:gsub('.lua\z', '')) 
      end
end
require_all("plugins/config")
