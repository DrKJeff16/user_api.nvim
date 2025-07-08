---@meta

error('(user_api.types.config): DO NOT SOURCE THIS FILE DIRECTLY', vim.log.levels.ERROR)

---@module 'user_api.types.maps'

---@class Keymaps.PreExec
---@field ft string[]
---@field bt string[]

---@class User.Config.Keymaps
---@field NOP string[] Table of keys to no-op after `<leader>` is pressed
---@field no_oped? boolean
---@field Keys AllModeMaps
---@field set_leader fun(self: User.Config.Keymaps, leader: string, local_leader: string?, force: boolean?)
---@field setup fun(self: User.Config.Keymaps, keys: AllModeMaps, bufnr: integer?, load_defaults: boolean?)
---@field new fun(O: table?): table|User.Config.Keymaps|fun(keys: AllModeMaps, bufnr: integer?, load_defaults: boolean?)

--- vim:ts=4:sts=4:sw=4:et:ai:si:sta:noci:nopi:
