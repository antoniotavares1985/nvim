return {
    'rmagatti/auto-session',
    dependencies = {
        'nvim-telescope/telescope.nvim', -- Only needed if you want to use sesssion lens
    },
    keys = {
        { "<c-s>", function()
            require("auto-session.session-lens").search_session {
                noremap = true,
            }
            end
        },
    },
   config = function()
       require('auto-session').setup({
           auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
           log_level = "error",
           auto_session_enable_last_session = false,
           auto_save_enabled = false,
           auto_restore_enabled = false,
           session_lens = {
               load_on_setup = true,
               previewer = false,
           },
       })
   end,
}
