-- Highlight the 81st column
-- 1) Define a highlight group for our “overlength” character
vim.cmd [[
  highlight OverLength ctermbg=24 guibg=#005f87
]]

-- 2) Use matchadd() to highlight *only* the 81st character on a line
--    if it exists (the pattern is "\%81v." in Vim regex).
vim.fn.matchadd('OverLength', '\\%81v.', 100)

local mason_registry = require 'mason-registry'
local jdtls_pkg = mason_registry.get_package 'jdtls'
local jdtls_path = jdtls_pkg:get_install_path()

local root_markers = { 'pom.xml', 'gradlew', 'mvnw', '.git' }
local root_dir = vim.fs.dirname(vim.fs.find(root_markers, { upward = true })[1])

-- Helper to collect all JAR files from a given path
local function collect_jars(dir)
  local jars = {}
  local handle = io.popen('find ' .. dir .. ' -name "*.jar"')
  if handle then
    for jar in handle:lines() do
      table.insert(jars, jar)
    end
    handle:close()
  end
  return jars
end

-- Collect JARs from Eclipse bundle pool and olca-app libs
local bundles = vim.tbl_extend(
  'force',
  collect_jars '/home/francois/code/openLCA/workspace/.metadata/.plugins/org.eclipse.pde.core/.bundle_pool/plugins',
  collect_jars '/home/francois/code/openLCA/olca-app/olca-app/libs'
)

local config = {
  cmd = { jdtls_path .. '/bin/jdtls' },
  root_dir = root_dir,
  settings = {
    java = {
      -- references = {
      --   includeDecompiledSources = true,
      -- },
      format = {
        enabled = false,
        -- settings = {
        --   url = 'file://' .. vim.fn.stdpath 'config' .. '/format/intellij-default.xml',
        -- },
      },
      eclipse = {
        downloadSources = true,
      },
      maven = {
        downloadSources = true,
      },
      -- saveActions = {
      --   organizeImports = true,
      -- },
    },
  },
}

-- for RCP projects, add bundles from the Eclipse workspace (../workspace)
-- local cwd = vim.fn.getcwd()
-- local project_name = vim.fs.basename(cwd)
--
-- -- Define the bundle path based on the project
-- local bundle_path = nil
-- if project_name == 'olca-app' or project_name == 'epd-editor' then
--   bundle_path = '../workspace/.metadata/.plugins/org.eclipse.pde.core/.bundle_pool/plugins'
-- end
--
-- if bundle_path then
--   config.init_options = {
--     bundles = vim.fn.glob(bundle_path .. '/*.jar', true, true), -- Add all .jar files in the bundle path
--   }
-- end

require('jdtls').start_or_attach(config)
