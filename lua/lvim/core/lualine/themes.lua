local M = {}

local colors = require "lvim.core.lualine.colors"

M.walh = {
  normal = {
    a = { bg = colors.foreground, fg = colors.background },
    b = { bg = colors.background, fg = colors.foreground },
    c = { bg = colors.background, fg = colors.foreground },

    x = { bg = colors.background, fg = colors.foreground },
    y = { bg = colors.background, fg = colors.foreground },
    z = { bg = colors.foreground, fg = colors.background },
  },
  insert = {
    a = { bg = colors.blue, fg = colors.background },
    b = { bg = colors.background, fg = colors.blue },
    c = { bg = colors.background, fg = colors.foreground },

    x = { bg = colors.background, fg = colors.foreground },
    y = { bg = colors.background, fg = colors.blue },
    z = { bg = colors.blue, fg = colors.background },
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.background },
    b = { bg = colors.background, fg = colors.yellow },
    c = { bg = colors.background, fg = colors.foreground },

    x = { bg = colors.background, fg = colors.foreground },
    y = { bg = colors.background, fg = colors.yellow },
    z = { bg = colors.yellow, fg = colors.background },
  },
  replace = {
    a = { bg = colors.red, fg = colors.background },
    b = { bg = colors.background, fg = colors.red },
    c = { bg = colors.background, fg = colors.foreground },

    x = { bg = colors.background, fg = colors.foreground },
    y = { bg = colors.background, fg = colors.red },
    z = { bg = colors.red, fg = colors.background },
  },
  command = {
    a = { bg = colors.orange, fg = colors.background },
    b = { bg = colors.background, fg = colors.orange },
    c = { bg = colors.background, fg = colors.foreground },

    x = { bg = colors.background, fg = colors.foreground },
    y = { bg = colors.background, fg = colors.orange },
    z = { bg = colors.orange, fg = colors.background },
  },
  inactive = {
    a = { bg = colors.background, fg = colors.grey },
    b = { bg = colors.background, fg = colors.grey },
    c = { bg = colors.background, fg = colors.grey },

    x = { bg = colors.background, fg = colors.grey },
    y = { bg = colors.background, fg = colors.grey },
    z = { bg = colors.background, fg = colors.grey },
  },
}

return M
