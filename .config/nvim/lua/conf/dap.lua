require("dap").adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  executable = {
    command = "node",
    -- 💀 Make sure to update this path to point to your installation
    args = { "~/.config/nvim/dap/js-debug/src/dapDebugServer.js", "${port}" },
  }
}
require("dap").configurations.javascript = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
}

vim.keymap.set('n', '<F5>', ":lua require'dap'.continue()<cr>")
