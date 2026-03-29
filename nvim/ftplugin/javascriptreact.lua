-- ftplugin para React (JavaScript/JSX)
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true
vim.opt_local.formatoptions = vim.opt_local.formatoptions + "t"
vim.opt_local.wrap = false

-- Configuraciones específicas de React
vim.b.tsx_closing = 1

-- Auto-closing para JSX
vim.cmd([[
  autocmd FileType javascriptreact,javascript.jsx let b:match_words = '<>:(),'
]])

-- Formatear al guardar
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.{js,jsx,mjs,cjs}",
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

-- Snippets para React
vim.cmd([[
  " React hooks snippets
  inoreab <buffer> rfc function <C-R>=ExpandRfc()<CR>
  inoreab <buffer> rcc function <C-R>=ExpandRcc()<CR>
  inoreab <buffer> usf function <C-R>=ExpandUseState()<CR>
  inoreab <buffer> uef function <C-R>=ExpandUseEffect()<CR>
  inoreab <buffer> ucf function <C-R>=ExpandUseCallback()<CR>
  inoreab <buffer> umf function <C-R>=ExpandUseMemo()<CR>
  inoreab <buffer> uref function <C-R>=ExpandUseRef()<CR>
  inoreab <buffer> uct function <C-R>=ExpandUseContext()<CR>
  inoreab <buffer> urf function <C-R>=ExpandUseReducer()<CR>

  function! ExpandRfc()
    return "function " . expand("<cword>") . "() {\n  return (\n    <div>\n      \n    </div>\n  );\n}"
  endfunction

  function! ExpandRcc()
    return "class " . expand("<cword>") . " extends React.Component {\n  render() {\n    return (\n      <div>\n        \n      </div>\n    );\n  }\n}"
  endfunction

  function! ExpandUseState()
    return "const [" . expand("<cword>") . ", set" . substitute(expand("<cword>"), '^.', '\u&', '') . "] = useState();"
  endfunction

  function! ExpandUseEffect()
    return "useEffect(() => {\n  \n}, []);"
  endfunction

  function! ExpandUseCallback()
    return "const " . expand("<cword>") . " = useCallback(() => {\n  \n}, []);"
  endfunction

  function! ExpandUseMemo()
    return "const " . expand("<cword>") . " = useMemo(() => {\n  \n}, []);"
  endfunction

  function! ExpandUseRef()
    return "const " . expand("<cword>") . "Ref = useRef(null);"
  endfunction

  function! ExpandUseContext()
    return "const " . expand("<cword>") . " = useContext();"
  endfunction

  function! ExpandUseReducer()
    return "const [state, dispatch] = useReducer(reducer, initialState);"
  endfunction
]])
