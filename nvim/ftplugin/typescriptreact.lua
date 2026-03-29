-- ftplugin para TypeScript React (TSX)
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true
vim.opt_local.formatoptions = vim.opt_local.formatoptions + "t"
vim.opt_local.wrap = false

-- Configuraciones específicas de TypeScript React
vim.b.tsx_closing = 1

-- Auto-closing para TSX
vim.cmd([[
  autocmd FileType typescriptreact,typescript.tsx let b:match_words = '<>:(),'
]])

-- Formatear al guardar
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.{ts,tsx,mts,cts}",
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})

-- Snippets para TypeScript React
vim.cmd([[
  " TypeScript React hooks snippets
  inoreab <buffer> rfc function <C-R>=ExpandTsRfc()<CR>
  inoreab <buffer> rcc function <C-R>=ExpandTsRcc()<CR>
  inoreab <buffer> usf const <C-R>=ExpandTsUseState()<CR>
  inoreab <buffer> uef function <C-R>=ExpandTsUseEffect()<CR>
  inoreab <buffer> ucf function <C-R>=ExpandTsUseCallback()<CR>
  inoreab <buffer> umf const <C-R>=ExpandTsUseMemo()<CR>
  inoreab <buffer> uref const <C-R>=ExpandTsUseRef()<CR>
  inoreab <buffer> ifc function <C-R>=ExpandInterface()<CR>
  inoreab <buffer> tfc function <C-R>=ExpandTsFunction()<CR>
  inoreab <buffer> pfc const <C-R>=ExpandProps()<CR>

  function! ExpandTsRfc()
    return "function " . expand("<cword>") . "() {\n  return (\n    <div>\n      \n    </div>\n  );\n}"
  endfunction

  function! ExpandTsRcc()
    return "class " . expand("<cword>") . " extends React.Component<Props, State> {\n  render() {\n    return (\n      <div>\n        \n      </div>\n    );\n  }\n}"
  endfunction

  function! ExpandTsUseState()
    return "const [" . expand("<cword>") . ", set" . substitute(expand("<cword>"), '^.', '\u&', '') . "] = useState<" . expand("<cword>") . ">();"
  endfunction

  function! ExpandTsUseEffect()
    return "useEffect(() => {\n  \n}, []);"
  endfunction

  function! ExpandTsUseCallback()
    return "const " . expand("<cword>") . " = useCallback(() => {\n  \n}, []);"
  endfunction

  function! ExpandTsUseMemo()
    return "const " . expand("<cword>") . " = useMemo(() => {\n  \n}, []);"
  endfunction

  function! ExpandTsUseRef()
    return "const " . expand("<cword>") . "Ref = useRef<HTMLDivElement>(null);"
  endfunction

  function! ExpandInterface()
    return "interface " . expand("<cword>") . " {\n  \n}"
  endfunction

  function! ExpandTsFunction()
    return "function " . expand("<cword>") . "(): JSX.Element {\n  return (\n    <div>\n      \n    </div>\n  );\n}"
  endfunction

  function! ExpandProps()
    return "interface Props {\n  \n}\n\nconst " . expand("<cword>") . ": React.FC<Props> = (props) => {\n  return (\n    <div>\n      \n    </div>\n  );\n};"
  endfunction
]])
