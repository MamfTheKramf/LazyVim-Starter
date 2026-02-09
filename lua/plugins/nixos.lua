
local function is_nixos()
  local f = io.open("/etc/os-release", "r")
  if not f then
    return false
  end
  local content = f:read("*a")
  f:close()
  return content:match("ID=nixos") ~= nil
end

local function enable_lsp(lsp, opts)
  opts.servers[lsp] = opts.servers[lsp] or {}
  opts.servers[lsp].enabled = true
end

local on_nixos = is_nixos()

return {
    { "mason-org/mason.nvim", enabled = false },
    { "mason-org/mason-lspconfig.nvim", enabled = false },
    {
        "neovim/nvim-lspconfig",
        opts = function(_, opts)
            opts.servers = opts.servers or {}

            enable_lsp("bashls", opts)
            enable_lsp("clangd", opts)
            enable_lsp("ocamllsp", opts)
            enable_lsp("pyright", opts)
            return opts
        end,
    }
}
