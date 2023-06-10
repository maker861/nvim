local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')

npairs.setup {
  map_bs = false , map_cr = false,
  check_ts = true,
  ts_config = {
    lua = { "string", "source" },
    javascript = { "string", "template_string" },
    java = false,
  },
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  fast_wrap = {
    map = "<A-e>",
    chars = { "{", "[", "(", '"' , "'" , "$" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0, -- Offset from pattern match
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "PmenuSel",
    highlight_grey = "LineNr",
  },
}

npairs.add_rules({
  Rule('$','$',{"tex"})
    :with_move(function(opts)
      return opts.next_char == opts.char
    end
    )
}) 



