local function extract_hl(color_group, scope, cterm_color)
  if vim.fn.hlexists(color_group) == 0 then
    return cterm_color
  end
  local color = vim.api.nvim_get_hl_by_name(color_group, true)
  if color.background ~= nil then
    color.bg = string.format("#%06x", color.background)
    color.background = nil
  else
    return cterm_color
  end

  if color.foreground ~= nil then
    color.fg = string.format("#%06x", color.foreground)
    color.foreground = nil
  else
    return cterm_color
  end

  if color.reverse then
    if scope == "bg" then
      scope = "fg"
    else
      scope = "bg"
    end
  end
  if scope then
    return color[scope]
  end
  return color
end

local colors = {
  background = extract_hl("StatusLine", "bg", 0),
  foreground = extract_hl("StatusLine", "fg", 7),
  red = extract_hl("DefaultError", "fg", 9),
  green = extract_hl("DiffAdd", "bg", 10),
  yellow = extract_hl("DiffChange", "bg", 11),
  blue = extract_hl("DiffText", "bg", 12),
  orange = extract_hl("", "fg", 208),
  grey = extract_hl("StatusLineNC", "fg", 8),
}

return colors
