-- Colorscheme generated by https://github.com/arcticlimer/djanho
vim.cmd[[highlight clear]]
vim.opt.termguicolors = true
local highlight = function(group, bg, fg, attr)
    fg = fg and 'guifg=' .. fg or ''
    bg = bg and 'guibg=' .. bg or ''
    attr = attr and 'gui=' .. attr or ''

    vim.api.nvim_command('highlight ' .. group .. ' '.. fg .. ' ' .. bg .. ' '.. attr)
end

local link = function(target, group)
    vim.api.nvim_command('highlight! link ' .. target .. ' '.. group)
end

local Color17 = '#294460'
local Color10 = '#0e1421'
local Color2 = '#C13838'
local Color8 = '#B85C40'
local Color6 = '#a9dc76'
local Color1 = '#3e668c'
local Color15 = '#2e222a'
local Color11 = '#758790'
local Color4 = '#c93e71'
local Color0 = '#b7d175'
local Color3 = '#00B3BD'
local Color5 = '#505e6b'
local Color12 = '#bad1d9'
local Color14 = '#233232'
local Color13 = '#101a29'
local Color16 = '#2a1f33'
local Color7 = '#CC9B52'
local Color9 = '#5288BA'

highlight('Type', nil, Color0, nil)
highlight('Comment', nil, Color1, 'italic')
highlight('Constant', nil, Color2, nil)
highlight('Function', nil, Color3, nil)
highlight('Conditional', nil, Color4, nil)
highlight('Conditional', nil, Color4, nil)
highlight('Repeat', nil, Color4, nil)
highlight('Operator', nil, Color5, nil)
highlight('Type', nil, Color4, nil)
highlight('String', nil, Color6, nil)
highlight('Type', nil, Color7, nil)
highlight('Identifier', nil, Color8, nil)
highlight('Number', nil, Color9, nil)
highlight('StatusLine', Color11, Color10, nil)
highlight('WildMenu', Color13, Color12, nil)
highlight('Pmenu', Color13, Color12, nil)
highlight('PmenuSel', Color12, Color13, nil)
highlight('PmenuThumb', Color13, Color12, nil)
highlight('DiffAdd', Color14, nil, nil)
highlight('DiffDelete', Color15, nil, nil)
highlight('Normal', Color13, Color12, nil)
highlight('Visual', Color16, nil, nil)
highlight('CursorLine', Color16, nil, nil)
highlight('ColorColumn', Color16, nil, nil)
highlight('SignColumn', Color13, nil, nil)
highlight('LineNr', nil, Color17, nil)
highlight('TabLine', Color10, Color1, nil)
highlight('TabLineSel', Color4, Color13, nil)
highlight('TabLineFill', Color10, Color1, nil)
highlight('TSPunctDelimiter', nil, Color12, nil)

link('TSString', 'String')
link('TSParameter', 'Constant')
link('TSKeyword', 'Keyword')
link('TelescopeNormal', 'Normal')
link('TSFunction', 'Function')
link('TSProperty', 'TSField')
link('Folded', 'Comment')
link('TSType', 'Type')
link('TSConstant', 'Constant')
link('TSPunctBracket', 'MyTag')
link('Macro', 'Function')
link('TSNamespace', 'TSType')
link('Repeat', 'Conditional')
link('TSParameterReference', 'TSParameter')
link('Whitespace', 'Comment')
link('TSLabel', 'Type')
link('TSComment', 'Comment')
link('TSConstBuiltin', 'TSVariableBuiltin')
link('TSField', 'Constant')
link('TSNumber', 'Number')
link('TSTag', 'MyTag')
link('CursorLineNr', 'Identifier')
link('TSTagDelimiter', 'Type')
link('TSOperator', 'Operator')
link('TSFloat', 'Number')
link('TSFuncMacro', 'Macro')
link('NonText', 'Comment')
link('TSRepeat', 'Repeat')
link('TSPunctSpecial', 'TSPunctDelimiter')
link('Operator', 'Keyword')
link('TSConditional', 'Conditional')
link('Conditional', 'Operator')
