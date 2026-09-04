require("modules.monitors")
require("modules.autostart")
require("modules.env")
require("modules.decorations")
require("modules.layout")
require("modules.misc")
require("modules.input")
require("modules.binds")
require("modules.windowrules")

package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/hypremoji/?.lua"
require("hypremoji")