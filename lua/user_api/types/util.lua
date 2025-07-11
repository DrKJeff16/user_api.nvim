---@meta

---@module 'user_api.types.autocmd'

---@alias VimNotifyLvl
---|0
---|1
---|2
---|3
---|4
---|5

---@alias NotifyLvl
---|'debug'
---|'error'
---|'info'
---|'off'
---|'trace'
---|'warn'

---@class NotifyOpts
---@field title? string Defaults to `'Message'`
---@field icon? string
---@field timeout? integer|boolean Defaults to `700`
---@field on_open? fun(...)
---@field on_close? fun(...)
---@field keep? fun(...)
---@field render? string|fun(...)
---@field replace? integer
---@field hide_from_history? boolean Defaults to `false`
---@field animate? boolean Defaults to `true`

---@class User.Util.Notify.Levels
---@field [0] 'trace'
---@field [1] 'debug'
---@field [2] 'info'
---@field [3] 'warn'
---@field [4] 'error'
---@field [5] 'off'
---@field TRACE 0
---@field DEBUG 1
---@field INFO 2
---@field WARN 3
---@field ERROR 4
---@field OFF 5

---@class User.Util.Notify
---@field Opts notify.Options
---@field Levels User.Util.Notify.Levels
---@field notify fun(msg: string, lvl: (NotifyLvl|VimNotifyLvl)?, opts: table|notify.Options?)

---@class User.Util.String.Alphabet.Vowels
---@field upper_map { ['A']: 'A', ['E']: 'E', ['I']: 'I', ['O']: 'O', ['U']: 'U' }
---@field lower_map { ['a']: 'a', ['e']: 'e', ['i']: 'i', ['o']: 'o', ['u']: 'u' }

---@class User.Util.String.Alphabet
---@field upper_list string[]
---@field lower_list string[]
---@field upper_map table<string, string>
---@field lower_map table<string, string>
---@field vowels User.Util.String.Alphabet.Vowels

---@class User.Util.String.Digits
---@field all table<string, string>
---@field odd_list ('1'|'3'|'5'|'7'|'9')[]
---@field even_list ('0'|'2'|'4'|'6'|'8')[]
---@field odd_map { ['1']: '1', ['3']: '3', ['5']: '5', ['7']: '7', ['9']: '9' }
---@field even_map { ['0']: '0', ['2']: '2', ['4']: '4', ['6']: '6', ['8']: '8' }

---@class User.Util.String
---@field alphabet User.Util.String.Alphabet
---@field digits User.Util.String.Digits
---@field capitalize fun(s: string, use_dot: boolean?, triggers: string[]?): (new_str: string)

---@class User.Util.Autocmd
---@field au_pair fun(T: AuPair)
---@field au_repeated fun(T: AuRepeat)
---@field au_from_arr fun(T: AuList)
---@field au_from_dict fun(T: AuDict)
---@field au_repeated_events fun(T: AuRepeatEvents)

---@alias DirectionFun fun(t: table<string|integer, any>): res: table<string|integer, any>

---@class DirectionFuns
---@field r DirectionFun
---@field l DirectionFun

---@class User.Util
---@field notify User.Util.Notify
---@field au User.Util.Autocmd
---@field string User.Util.String
---@field has_words_before fun(): boolean
---@field pop_values fun(T: table, V: any): (table, ...)
---@field xor fun(x: boolean, y: boolean): boolean
---@field strip_fields fun(T: table<string|integer, any>, values: string|string[]): table
---@field strip_values fun(T: table<string|integer, any>, values: any[], max_instances: integer?): table
---@field ft_set fun(s: string?, bufnr: integer?): fun()
---@field bt_get fun(bufnr: integer?): string
---@field ft_get fun(bufnr: integer?): string
---@field opt_get fun(self: User.Util, s: string|string[], bufnr: integer?): table<string, any>|table
---@field opt_set fun(s: string, val: any, bufnr: integer?)
---@field assoc fun(self: User.Util)
---@field displace_letter fun(c: string, direction: ('next'|'prev')?, cycle: boolean?): string
---@field mv_tbl_values fun(T: table|table<string|integer, any>, steps: integer?, direction: ('r'|'l')?): res: table<string|integer, any>
---@field discard_dups fun(data: string|table): (string|table)
---@field new fun(O: table?): table|User.Util

--- vim:ts=4:sts=4:sw=4:et:ai:si:sta:noci:nopi:
