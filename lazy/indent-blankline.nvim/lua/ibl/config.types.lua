
---@meta

--- Configuration table for indent-blankline
---@class ibl.config
--- Enables or disables indent-blankline
---@field enabled boolean?
--- Sets the amount indent-blankline debounces refreshes in milliseconds
---@field debounce number?
--- Configures the viewport of where indentation guides are generated
---@field viewport_buffer ibl.config.viewport_buffer?
--- Configures the indentation
---@field indent ibl.config.indent?
--- Configures the whitespace
---@field whitespace ibl.config.whitespace?
--- Configures the scope
---@field scope ibl.config.scope?
--- Configures what is excluded from indent-blankline
---@field exclude ibl.config.exclude?

---@class ibl.config.viewport_buffer
--- Minimum number of lines above and below of what is currently visible in the window for which indentation guides will
--- be generated
---@field min number?
--- Maximum number of lines above and below of what is currently visible in the window for which indentation guides will
--- be generated
---@field max number?

---@class ibl.config.indent
--- Character, or list of characters, that get used to display the indentation guide
---
--- Each character has to have a display width of 0 or 1
---@field char string|string[]?
--- Character, or list of characters, that get used to display the indentation guide for tabs
---
--- Defaults to what is set in `listchars`
--- Each character has to have a display width of 0 or 1
---@field tab_char string|string[]?
--- Highlight group, or list of highlight groups, that get applied to the indentation guide
---@field highlight string|string[]?
--- Caps the number of indentation levels by looking at the surrounding code
---@field smart_indent_cap boolean?
--- Virtual text priority for the indentation guide
---@field priority number?
--- Repeat indentation guide virtual text on wrapped lines if 'breakindent' is set
---@field repeat_linebreak boolean?

---@class ibl.config.whitespace
--- Highlight group, or list of highlight groups, that get applied to the whitespace
---@field highlight string|string[]?
--- Removes trailing whitespace on blanklines
---
--- Turn this off if you want to add background color to the whitespace highlight group
---@field remove_blankline_trail boolean?

---@class ibl.config.scope
--- Enables or disables scope
---@field enabled boolean?
--- Character, or list of characters, that get used to display the scope indentation guide
---
--- Each character has to have a display width of 0 or 1
---@field char string|string[]?
--- Shows an underline on the first line of the scope
---@field show_start boolean?
--- Shows an underline on the last line of the scope
---@field show_end boolean?
--- Always shows an underline on the last line of the scope (default is to ignore some cases)
--- and starts the scope underline at the actual beginning of the scope (even if it is to the
--- right of the indent level)
---@field show_exact_scope boolean?
--- Checks for the current scope in injected treesitter languages
---
--- This also influences if the scope gets excluded or not
---@field injected_languages boolean?
--- Highlight group, or list of highlight groups, that get applied to the scope
---@field highlight string|string[]?
--- Virtual text priority for the scope
---@field priority number?
--- Configures additional nodes to be used as scope
---@field include ibl.config.scope.include?
--- Configures nodes or languages to be excluded from scope
---@field exclude ibl.config.scope.exclude?

---@class ibl.config.scope.include
--- map of language to a list of node types which can be used as scope
---
--- Use `*` as a wildcard for all languages
---
--- Example:
--- <code>
--- {
---   ["*"] = { "comment" },
---   rust = { "identifier" },
--- }
--- </code>
---@field node_type table<string, string[]>?

---@class ibl.config.scope.exclude
--- List of treesitter languages for which scope is disabled
---@field language string[]?
--- map of language to a list of node types which should not be used as scope
---
--- Use `*` as a wildcard for all languages
---
--- Example:
--- <code>
--- {
---   ["*"] = { "comment" },
---   rust = { "identifier" },
--- }
--- </code>
---@field node_type table<string, string[]>?

---@class ibl.config.exclude
--- List of `filetypes` for which indent-blankline is disabled
---@field filetypes string[]?
--- List of `buftypes` for which indent-blankline is disabled
---@field buftypes string[]?

------

--- Configuration table for indent-blankline
---@class ibl.config.full: ibl.config
--- Enables or disables indent-blankline
---@field enabled boolean
--- Sets the amount indent-blankline debounces refreshes in milliseconds
---@field debounce number
--- Configures the viewport of where indentation guides are generated
---@field viewport_buffer ibl.config.full.viewport_buffer: ibl.config.viewport_buffer
--- Configures the indentation
---@field indent ibl.config.full.indent: ibl.config.indent
--- Configures the whitespace
---@field whitespace ibl.config.full.whitespace: ibl.config.whitespace
--- Configures the scope
---@field scope ibl.config.full.scope: ig.config.scope
--- Configures what is excluded from indent-blankline
---@field exclude ibl.config.full.exclude: ibl.config.exclude

---@class ibl.config.full.viewport_buffer: ibl.config.viewport_buffer
--- Minimum number of lines above and below of what is currently visible in the window for which indentation guides will
--- be generated
---@field min number
--- Maximum number of lines above and below of what is currently visible in the window for which indentation guides will
--- be generated
---@field max number

---@class ibl.config.full.indent: ibl.config.indent
--- Character, or list of characters, that get used to display the indentation guide
---
--- Each character has to have a display width of 0 or 1
---@field char string|string[]
--- Character, or list of characters, that get used to display the indentation guide for tabs
---
--- Defaults to what is set in `listchars`
--- Each character has to have a display width of 0 or 1
---@field tab_char string|string[]?
--- Highlight group, or list of highlight groups, that get applied to the indentation guide
---@field highlight string|string[]
--- Caps the number of indentation levels by looking at the surrounding code
---@field smart_indent_cap boolean
--- Virtual text priority for the indentation guide
---@field priority number
--- Repeat indentation guide virtual text on wrapped lines if 'breakindent' is set
---@field repeat_linebreak boolean

---@class ibl.config.full.whitespace: ibl.config.whitespace
--- Highlight group, or list of highlight groups, that get applied to the whitespace
---@field highlight string|string[]
--- Removes trailing whitespace on blanklines
---
--- Turn this off if you want to add background color to the whitespace highlight group
---@field remove_blankline_trail boolean

---@class ibl.config.full.scope: ibl.config.scope
--- Enables or disables scope
---@field enabled boolean
--- Character, or list of characters, that get used to display the scope indentation guide
---
--- Each character has to have a display width of 0 or 1
---@field char string|string[]?
--- Shows an underline on the first line of the scope
---@field show_start boolean
--- Shows an underline on the last line of the scope
---@field show_end boolean
--- Always shows an underline on the last line of the scope (default is to ignore some cases)
--- and starts the scope underline at the actual beginning of the scope (even if it is to the
--- right of the indent level)
---@field show_exact_scope boolean
--- Checks for the current scope in injected treesitter languages
---
--- This also influences if the scope gets excluded or not
---@field injected_languages boolean
--- Highlight group, or list of highlight groups, that get applied to the scope
---@field highlight string|string[]
--- Virtual text priority for the scope
---@field priority number
--- Configures additional nodes to be used as scope
---@field include ibl.config.full.scope.include
--- Configures nodes or languages to be excluded from scope
---@field exclude ibl.config.full.scope.exclude: ibl.config.scope.exclude

---@class ibl.config.full.scope.include: ibl.config.scope.include
--- map of language to a list of node types which can be used as scope
---
--- Use `*` as a wildcard for all languages
---
--- Example:
--- <code>
--- {
---   ["*"] = { "comment" },
---   rust = { "identifier" },
--- }
--- </code>
---@field node_type table<string, string[]>

---@class ibl.config.full.scope.exclude: ibl.config.scope.exclude
--- List of treesitter languages for which scope is disabled
---@field language string[]
--- map of language to a list of node types which should not be used as scope
---
--- Use `*` as a wildcard for all languages
---
--- Example:
--- <code>
--- {
---   ["*"] = { "comment" },
---   rust = { "identifier" },
--- }
--- </code>
---@field node_type table<string, string[]>

---@class ibl.config.full.exclude: ibl.config.exclude
--- List of `filetypes` for which indent-blankline is disabled
---@field filetypes string[]
--- List of `buftypes` for which indent-blankline is disabled
---@field buftypes string[]