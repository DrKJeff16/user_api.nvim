---@meta

---@module 'user_api.types.maps'

---@alias CtxFun fun(ctx: vim.api.keyset.user_command)

---@class User.Commands.CtxSpec
---@field [1] CtxFun
---@field [2] vim.api.keyset.user_command
---@field mappings? AllModeMaps

---@alias User.Commands.Spec table<string, User.Commands.CtxSpec>

---@class User.Commands
---@field commands User.Commands.Spec
---@field new_command fun(self: User.Commands, name: string, C: User.Commands.CtxSpec|table)
---@field setup fun(self: User.Commands)
---@field setup_keys fun(self: User.Commands)

--- vim:ts=4:sts=4:sw=4:et:ai:si:sta:noci:nopi:
