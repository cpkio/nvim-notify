local M = {}

function M.setup()
  vim.cmd[[
    highlight default link NotifyERRORBorder DiagnosticError
    highlight default link NotifyWARNBorder  DiagnosticWarn
    highlight default link NotifyINFOBorder  DiagnosticInfo
    highlight default link NotifyDEBUGBorder Debug
    highlight default link NotifyTRACEBorder DiagnosticHint

    highlight default link NotifyERRORIcon   DiagnosticError
    highlight default link NotifyWARNIcon    DiagnosticWarn
    highlight default link NotifyINFOIcon    DiagnosticInfo
    highlight default link NotifyDEBUGIcon   Debug
    highlight default link NotifyTRACEIcon   DiagnosticHint

    highlight default link NotifyERRORTitle  DiagnosticError
    highlight default link NotifyWARNTitle   DiagnosticWarn
    highlight default link NotifyINFOTitle   DiagnosticInfo
    highlight default link NotifyDEBUGTitle  Debug
    highlight default link NotifyTRACETitle  DiagnosticHint

    highlight default link NotifyERRORBody   DiagnosticError
    highlight default link NotifyWARNBody    DiagnosticWarn
    highlight default link NotifyINFOBody    DiagnosticInfo
    highlight default link NotifyDEBUGBody   Debug
    highlight default link NotifyTRACEBody   DiagnosticHint

    highlight default link NotifyBackground Normal

    highlight default link NotifyLogTime Comment
    highlight default link NotifyLogTitle Special
  ]]
end

M.setup()

vim.cmd([[
  augroup NvimNotifyRefreshHighlights
    autocmd!
    autocmd ColorScheme * lua require('notify.config.highlights').setup()
  augroup END
]])

return M
