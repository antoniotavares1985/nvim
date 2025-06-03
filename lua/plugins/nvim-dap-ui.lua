-- return {
--     "rcarriga/nvim-dap-ui",
--     dependencies = {
--         "mfussenegger/nvim-dap",
--         "nvim-neotest/nvim-nio"
--     },
--     config = function ()
--         local dap, dapui = require("dap"), require("dapui")
--         require("dapui").setup({
--             controls = {
--                 element = "repl",
--                 enabled = true,
--                 icons = {
--                     disconnect = "",
--                     pause = "",
--                     play = "",
--                     run_last = "",
--                     step_back = "",
--                     step_into = "",
--                     step_out = "",
--                     step_over = "",
--                     terminate = ""
--                 }
--             },
--             element_mappings = {},
--             expand_lines = true,
--             floating = {
--                 border = "single",
--                 mappings = {
--                     close = { "q", "<Esc>" }
--                 }
--             },
--             force_buffers = true,
--             icons = {
--                 collapsed = "",
--                 current_frame = "",
--                 expanded = ""
--             },
--             layouts = { {
--                 elements = { {
--                     id = "scopes",
--                     size = 0.25
--                 }, {
--                     id = "breakpoints",
--                     size = 0.25
--                 }, {
--                     id = "stacks",
--                     size = 0.25
--                 }, {
--                     id = "watches",
--                     size = 0.25
--                 } },
--                 position = "left",
--                 size = 40
--             }, {
--                 elements = { {
--                     id = "repl",
--                     size = 0.5
--                 }, {
--                     id = "console",
--                     size = 0.5
--                 } },
--                 position = "bottom",
--                 size = 10
--             } },
--             mappings = {
--                 edit = "e",
--                 expand = { "<CR>", "<2-LeftMouse>" },
--                 open = "o",
--                 remove = "d",
--                 repl = "r",
--                 toggle = "t"
--             },
--             render = {
--                 indent = 1,
--                 max_value_lines = 100
--             }
--         })
-- 
-- --         dap.adapters.coreclr = {
-- --             type = 'executable',
-- --             command = '~/AppData/Local/nvim-data/mason/packages/netcoredbg/netcoredbg/netcoredbg.exe', --add your netcoredbg executable path
-- --             args = {'--interpreter=vscode'}
-- --         }
-- -- 
-- --         dap.configurations.cs = {
-- --             {
-- --                 type = "coreclr",
-- --                 request = "launch",
-- --                 name = "launch .net core app",
-- --                 program = function()
-- --                     return "~/documents/projects/wheelchair/autonomous-wheelchair/wheelchairapi/wheelchairapi/bin/debug/net8.0/wheelchairapi.dll" --point to the .dll project build file
-- --                 end,
-- --                 args = {},
-- --                 cwd = function()
-- --                     return vim.fn.input("workspace folder: ", vim.fn.getcwd() .. "/", "file")
-- --                 end,
-- --                 env = {
-- --                     aspnetcore_environment = "development",
-- --                     aspnetcore_urls = "https://localhost:5001;http://localhost:5000"
-- --                 },
-- --                 console = 'integratedterminal',
-- --             },
-- --         }
-- 
--         --breakpoint icons
--         vim.fn.sign_define('DapBreakpoint', { text='🛑', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
--         vim.fn.sign_define('DapStopped', { text='▶️', texthl='DapStopped', linehl='DapStopped', numhl='DapStopped' })
-- 
--         --toggle breakpoint
--         vim.api.nvim_set_keymap("n", "<leader>dt", ":DapToggleBreakpoint<CR>", {noremap=true})
--         -- start debugging
--         vim.api.nvim_set_keymap("n", "<leader>dc", ":DapContinue<CR>", {noremap=true})
--         --reset layout
--         vim.api.nvim_set_keymap("n", "<leader>dr", "<cmd>lua require('dapui').open({reset = true})<CR>", { noremap = true })
-- 
--         dap.listeners.before.attach.dapui_config = function()
--             dapui.open()
--         end
--         dap.listeners.before.launch.dapui_config = function()
--             dapui.open()
--         end
--         dap.listeners.before.event_terminated.dapui_config = function()
--             dapui.close()
--         end
--         dap.listeners.before.event_exited.dapui_config = function()
--             dapui.close()
--         end
--     end
-- }
 
return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    "williamboman/mason.nvim",
    'nvim-neotest/nvim-nio',
    'jay-babu/mason-nvim-dap.nvim',
    'leoluz/nvim-dap-go',
  },
  keys = {
    -- Basic debugging keymaps, feel free to change to your liking!
    {
      '<F5>',
      function()
        require('dap').continue()
      end,
      desc = 'Debug: Start/Continue',
    },
    {
      '<F1>',
      function()
        require('dap').step_into()
      end,
      desc = 'Debug: Step Into',
    },
    {
      '<F2>',
      function()
        require('dap').step_over()
      end,
      desc = 'Debug: Step Over',
    },
    {
      '<F3>',
      function()
        require('dap').step_out()
      end,
      desc = 'Debug: Step Out',
    },
    {
      '<leader>b',
      function()
        require('dap').toggle_breakpoint()
      end,
      desc = 'Debug: Toggle Breakpoint',
    },
    {
      '<leader>B',
      function()
        require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
      end,
      desc = 'Debug: Set Breakpoint',
    },
    -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
    {
      '<F7>',
      function()
        require('dapui').toggle()
      end,
      desc = 'Debug: See last session result.',
    },
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('mason-nvim-dap').setup {
      -- You can provide additional configuration to the handlers,
      -- see mason-nvim-dap README for more information
      handlers = {
          function(config)
              -- all sources with no handler get passed here

              -- Keep original functionality
              require('mason-nvim-dap').default_setup(config)
          end,
          netcoredbg = function(config)
              config.adapters = {
                type = "coreclr",
                request = "launch",
                name = "launch .net core app",

                args = {},
                cwd = function()
                    return vim.fn.input("workspace folder: ", vim.fn.getcwd() .. "/", "file")
                end,
                env = {
                    aspnetcore_environment = "development",
                    aspnetcore_urls = {
                        "http://localhost:5000",
                        "https://localhost:5001",
                    }
                },
                console = 'integratedterminal',
            }
            require('mason-nvim-dap').default_setup(config) -- don't forget this!
          end,
      },
    }

    dapui.setup {
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
          icons = {
              -- disconnect = '⏏',
              -- pause = '⏸',
              -- play = "",
              -- step_into = '⏎',
              -- step_over = '⏭',
              -- step_out = '⏮',
              -- step_back = 'b',
              -- run_last = '▶▶',
              -- terminate = '⏹',
              play = '▶',
              pause = "",
              step_over = "",
              step_into = "",
              step_out = "",
              step_back = "",
              run_last = "",
              terminate = "",
              disconnect = "",
          },
      },
    }

    -- Change breakpoint icons
    vim.api.nvim_set_hl(0, 'DapBreak', { fg = '#e51400' })
    vim.api.nvim_set_hl(0, 'DapStop', { fg = '#ffcc00' })
    local breakpoint_icons = vim.g.have_nerd_font
        and { Breakpoint = '', BreakpointCondition = '', BreakpointRejected = '', LogPoint = '', Stopped = '⭔' }
      or { Breakpoint = '●', BreakpointCondition = '⊜', BreakpointRejected = '⊘', LogPoint = '◆', Stopped = '' }
    for type, icon in pairs(breakpoint_icons) do
      local tp = 'Dap' .. type
      local hl = (type == 'Stopped') and 'DapStop' or 'DapBreak'
      vim.fn.sign_define(tp, { text = icon, texthl = hl, numhl = hl })
    end

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close
  end,
}
