vim.filetype.add({
	pattern = {
		["/ghostty/config"] = "ghostty",
		["/ghostty/.*%.conf"] = "ghostty",
		-- Archivos Prisma
		["/.*prisma/.*schema%.prisma$"] = "prisma",
		["/prisma/.*schema%.prisma$"] = "prisma",
		["schema%.prisma$"] = "prisma",
	},
})
