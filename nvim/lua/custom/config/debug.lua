local dap = require("dap")
local dapui = require("dapui")
local debugpy_path = vim.fn.stdpath("data")
  .. "/mason/packages/debugpy/venv/bin/python"

require("dap-python").setup(debugpy_path)

dapui.setup()

vim.keymap.set("n", "<F4>", dap.continue)
vim.keymap.set("n", "<F1>", dap.step_into)
vim.keymap.set("n", "<F2>", dap.step_over)
vim.keymap.set("n", "<F3>", dap.step_out)
vim.keymap.set("n", "<C-b>", dap.toggle_breakpoint)
vim.keymap.set("n", "<F7>", dapui.toggle)
vim.keymap.set("n", "<leader><C-b>", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end)

dap.listeners.after.event_initialized["dapui_config"] = dapui.open
dap.listeners.before.event_terminated["dapui_config"] = dapui.close
dap.listeners.before.event_exited["dapui_config"] = dapui.close

dap.adapters = {
  codelldb = {
    type = "server",
    host = "127.0.0.1",
    port = "${port}",
    executable = {
      command = "codelldb",
      args = {
        "--port",
        "${port}",
      },
    },
  },
  pwa_node = {
    type = "server",
    host = "::1",
    port = "${port}",
    executable = {
      command = "js-debug-adapter",
      args = {
        "${port}",
      },
    },
  },
}

dap.configurations.c = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input(
        "Path to executable: ",
        vim.fn.getcwd() .. "/",
        "file"
      )
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
}

dap.configurations.typescript = {
  {
    type = "pwa_node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
}

dap.configurations.rust = dap.configurations.c
dap.configurations.cpp = dap.configurations.c
dap.configurations.javascipt = dap.configurations.typescript
dap.configurations.javasciptreact = dap.configurations.typescript
dap.configurations.typesciptreact = dap.configurations.typescript
