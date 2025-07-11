---@diagnostic disable:missing-fields

---@module 'user_api.types.update'

---@type User.Update
local Update = {}

---@param self User.Update
---@param verbose? boolean
---@return string?
function Update:update(verbose)
    local notify = require('user_api.util.notify').notify
    local is_bool = require('user_api.check.value').is_bool

    local curr_win = vim.api.nvim_get_current_win
    local curr_tab = vim.api.nvim_get_current_tabpage

    verbose = is_bool(verbose) and verbose or false

    local og_cwd = vim.fn.getcwd(curr_win(), curr_tab())

    local cmd = {
        'git',
        'pull',
        '--rebase',
        '--recurse-submodules',
    }

    vim.api.nvim_set_current_dir(vim.fn.stdpath('config'))

    local res = vim.fn.system(cmd)

    if vim.v.shell_error ~= 0 then
        error('Failed to update Jnvim, try to do it manually...', vim.log.levels.ERROR)
    end

    if res:match('Already up to date') then
        notify('Jnvim is up to date!', 'info', {
            animate = true,
            hide_from_history = true,
            timeout = 2000,
            title = 'User API',
        })
    elseif not res:match('error') then
        if verbose then
            notify(res, 'debug', {
                animate = true,
                hide_from_history = true,
                timeout = 2250,
                title = 'User API',
            })
        end

        notify('You need to restart Nvim!', 'warn', {
            animate = true,
            hide_from_history = false,
            timeout = 5000,
            title = 'User API',
        })
    end

    vim.api.nvim_set_current_dir(og_cwd)

    return res
end

---@param self User.Update
function Update:setup_maps()
    local Keymaps = require('user_api.config.keymaps')

    local desc = require('user_api.maps.kmap').desc

    Keymaps:setup({
        n = {
            ['<leader>U'] = { group = '+User API' },

            ['<leader>Uu'] = {
                function()
                    self:update()
                end,
                desc('Update User Config'),
            },
            ['<leader>UU'] = {
                function()
                    self:update(true)
                end,
                desc('Update User Config (Verbose)', false),
            },
        },
    })
end

return Update

--- vim:ts=4:sts=4:sw=4:et:ai:si:sta:noci:nopi:
