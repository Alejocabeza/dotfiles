-- ftplugin para Prisma
vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.expandtab = true

-- Configuraciones específicas de Prisma
vim.b.ts_mode = "prisma"

-- Snippets para Prisma
vim.cmd([[
  " Prisma snippets
  inoreab <buffer> pm model <C-R>=ExpandPrismaModel()<CR>
  inoreab <buffer> pen enum <C-R>=ExpandPrismaEnum()<CR>
  inoreab <buffer> pg generator <C-R>=ExpandPrismaGenerator()<CR>
  inoreab <buffer> pd datasource <C-R>=ExpandPrismaDatasource()<CR>
  inoreab <buffer> pcr @@id <C-R>=ExpandPrismaId()<CR>
  inoreab <buffer> pcu @@unique <C-R>=ExpandPrismaUnique()<CR>
  inoreab <buffer> pcf @@fields <C-R>=ExpandPrismaFields()<CR>
  inoreab <buffer> pcrl @relation <C-R>=ExpandPrismaRelation()<CR>

  function! ExpandPrismaModel()
    return "model " . expand("<cword>") . " {\n  id        String   @id @default(uuid())\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n  \n}"
  endfunction

  function! ExpandPrismaEnum()
    return "enum " . expand("<cword>") . " {\n  \n}"
  endfunction

  function! ExpandPrismaGenerator()
    return "generator client {\n  provider = \"prisma-client-js\"\n}"
  endfunction

  function! ExpandPrismaDatasource()
    return "datasource db {\n  provider = \"postgresql\"\n  url      = env(\"DATABASE_URL\")\n}"
  endfunction

  function! ExpandPrismaId()
    return "@id @default(uuid())"
  endfunction

  function! ExpandPrismaUnique()
    return "@@unique([" . expand("<cword>") . "])"
  endfunction

  function! ExpandPrismaFields()
    return "@@index([" . expand("<cword>") . "])"
  endfunction

  function! ExpandPrismaRelation()
    return "@relation(fields: [" . expand("<cword>") . "], references: [id])"
  endfunction
]])

-- Comandos útiles para Prisma
vim.keymap.set("n", "<leader>pg", function()
	vim.cmd("!npx prisma generate")
end, { buffer = true, desc = "Prisma: Generate client" })

vim.keymap.set("n", "<leader>pd", function()
	vim.cmd("!npx prisma db push")
end, { buffer = true, desc = "Prisma: DB push" })

vim.keymap.set("n", "<leader>pm", function()
	vim.cmd("!npx prisma migrate dev")
end, { buffer = true, desc = "Prisma: Migrate dev" })

vim.keymap.set("n", "<leader>ps", function()
	vim.cmd("!npx prisma studio")
end, { buffer = true, desc = "Prisma: Studio" })
