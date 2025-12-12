return {
  enable = true,
  preset = {
    header = [[
             _             _            _      _          _        _         _   _       
        /\ \     _    /\ \         /\ \   /\ \    _ / /\      /\ \      /\_\/\_\ _   
       /  \ \   /\_\ /  \ \       /  \ \  \ \ \  /_/ / /      \ \ \    / / / / //\_\ 
      / /\ \ \_/ / // /\ \ \     / /\ \ \  \ \ \ \___\/       /\ \_\  /\ \/ \ \/ / / 
     / / /\ \___/ // / /\ \_\   / / /\ \ \ / / /  \ \ \      / /\/_/ /  \____\__/ /  
    / / /  \/____// /_/_ \/_/  / / /  \ \_\\ \ \   \_\ \    / / /   / /\/________/   
   / / /    / / // /____/\    / / /   / / / \ \ \  / / /   / / /   / / /\/_// / /    
  / / /    / / // /\____\/   / / /   / / /   \ \ \/ / /   / / /   / / /    / / /     
 / / /    / / // / /______  / / /___/ / /     \ \ \/ /___/ / /__ / / /    / / /      
/ / /    / / // / /_______\/ / /____\/ /       \ \  //\__\/_/___\\/_/    / / /       
\/_/     \/_/ \/__________/\/_________/         \_\/ \/_________/        \/_/        

]],
  },
  sections = {
    { section = "header" },
    { section = "keys", gap = 1, padding = 1 },
    {
      pane = 1,
      icon = " ",
      desc = "Browse Repo",
      enabled = function()
        return Snacks.git.get_root() ~= nil
      end,
      padding = 1,
      key = "b",
      action = function()
        Snacks.gitbrowse()
      end,
    },
    function()
      local in_git = Snacks.git.get_root() ~= nil
      local gh_installed = vim.fn.executable("gh") == 1
      local cmds = {
        {
          icon = " ",
          title = "Git Status",
          cmd = "git --no-pager diff --stat -B -M -C",
          height = 10,
        },
      }
      return vim.tbl_map(function(cmd)
        return vim.tbl_extend("force", {
          pane = 1,
          section = "terminal",
          enabled = in_git and gh_installed,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        }, cmd)
      end, cmds)
    end,
    {
      key = "t",
      enabled = function()
        return vim.system({ "git", "rev-parse", "--is-bare-repository" }):wait().stdout == "true\n"
      end,
      desc = "Worktree",
      icon = " ",
      action = "<leader>gt",
    },
    { section = "startup" },
  },
}
