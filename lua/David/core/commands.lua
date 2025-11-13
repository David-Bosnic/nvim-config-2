vim.api.nvim_create_user_command("Atlas", function()
   local handle = io.popen("find ~/programming -maxdepth 2 -type d | fzf")
   local project_dir = handle:read("*a")
   handle:close()
   project_dir = project_dir:gsub("\n$", "")

   if #project_dir > 0 then
      vim.cmd("cd " .. vim.fn.fnameescape(project_dir))
      vim.cmd("edit .")
   end
end, {})

vim.api.nvim_create_user_command('Hex', function(opts)
   local num = tonumber(opts.args)
   if num then
      print(string.format("0x%X", num))
   else
      print("Error: Not a valid number")
   end
end, {
   nargs = 1,
})
