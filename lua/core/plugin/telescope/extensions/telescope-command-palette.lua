require('telescope').load_extension('command_palette')

return {
  {
    "File",
    { "entire selection (C-a)", ':call feedkeys("GVgg")' },
    { "save current file (C-s)", ':w' },
    { "save all files (C-A-s)", ':wa' },
    { "quit (C-q)", ':qa' },
    { "file browser (C-i)", ":lua require'telescope'.extensions.file_browser.file_browser()", 1 },
    { "search word (A-w)", ":lua require('telescope.builtin').live_grep()", 1 },
    { "git files (A-f)", ":lua require('telescope.builtin').git_files()", 1 },
    { "files (C-f)",     ":lua require('telescope.builtin').find_files()", 1 },
  },
  {
    "Help",
    { "tips", ":help tips" },
    { "cheatsheet", ":help index" },
    { "tutorial", ":help tutor" },
    { "summary", ":help summary" },
    { "quick reference", ":help quickref" },
    { "search help(F1)", ":lua require('telescope.builtin').help_tags()", 1 },
  },
  {
    "Vim",
    { "reload vimrc", ":source $MYVIMRC" },
    { 'check health', ":checkhealth" },
    { "jumps (Alt-j)", ":lua require('telescope.builtin').jumplist()" },
    { "commands", ":lua require('telescope.builtin').commands()" },
    { "command history", ":lua require('telescope.builtin').command_history()" },
    { "registers (A-e)", ":lua require('telescope.builtin').registers()" },
    { "colorshceme", ":lua require('telescope.builtin').colorscheme()", 1 },
    { "vim options", ":lua require('telescope.builtin').vim_options()" },
    { "keymaps", ":lua require('telescope.builtin').keymaps()" },
    { "buffers", ":Telescope buffers" },
    { "search history (C-h)", ":lua require('telescope.builtin').search_history()" },
    { "paste mode", ':set paste!' },
    { 'cursor line', ':set cursorline!' },
    { 'cursor column', ':set cursorcolumn!' },
    { "spell checker", ':set spell!' },
    { "relative number", ':set relativenumber!' },
    { "search highlighting (F12)", ':set hlsearch!' },
  },
  {
    "Octo(GitHub client)",
    -- issue
    { "List all issues", ":Octo issue list" },
    { "Close the current issue", ":Octo issue close" },
    { "Reopen the current issue", ":Octo issue reopen" },
    { "Open current issue in the browser", ":Octo issue browser" },
    { "Creates a new issue in the current repo", ":Octo issue create" },
    { "List changed files", ":lua require('octo.picker').changed_files()" },
    -- pr
    { "List all PRs satisfying given filter", ":Octo pr list" },
    { "Reopen the current PR", ":Octo pr reopen" },
    { "Close the current PR", ":Octo pr close" },
    { "Creates a new PR for the current branch", ":Octo pr create" },
    { "List all PR commits", ":Octo pr commits" },
    { "Show PR diff", ":Octo pr diff" },
    { "Merge PR", ":Octo pr merge commit" },
    { "Squash and merge PR", ":Octo pr merge squash" },
    { "Add reviewer", ":lua require('octo.commands').add_user('reviewer')" },
    { "Remove reviewer", ":lua require('octo.commands').remove_user('reviewer')" },
    { "Add assignee", ":lua require('octo.commands').add_user('assignee')" },
    { "Remove assignee", ":lua require('octo.commands').remove_user('assignee')" },
    { "Open current PR in the browser", ":Octo pr browser" },
    { "Create label", ":lua require('octo.commands').create_label()" },
    { "Add label", ":lua require('octo.commands').add_label()" },
    { "Remove label", ":lua require('octo.commands').remove_label()" },
    -- repo
    { "List repos user owns, contributes or belong to", ":Octo repo list" },
    { "Open current repo in the browser", ":Octo repo browser" },
    -- comment
    { "Add a new comment", ":Octo comment add" },
    { "Delete a comment", ":Octo comment delete" },
    -- thread
    { "Mark a review thread as resolved", ":Octo thread resolve" },
    { "Mark a review thread as unresolved", ":Octo thread unresolve" },
  },
}
