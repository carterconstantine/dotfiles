-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 20,

        border_size = 2,

        col = {
            active_border   = "rgba(b4befeff)",
            inactive_border = "rgba(45475ae6)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 0.9,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 5,
            passes    = 2,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },

    xwayland = {
        force_zero_scaling = true
    }
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- Default springs
hl.curve("quick", { type = "spring", mass = 0.6, stiffness = 1000, dampening = 2*math.sqrt(0.6*1000) })
hl.curve("mid", { type = "spring", mass = 0.8, stiffness = 600, dampening = 2*math.sqrt(0.8*600) })
hl.curve("slow", { type = "spring", mass = 3, stiffness = 100, dampening = 2*math.sqrt(3*100) })



hl.animation({ leaf = "global",        enabled = true,  speed = 1,   spring = "mid" })
hl.animation({ leaf = "border",        enabled = true,  speed = 1, spring = "mid" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 1, spring = "quick",  style = "popin 80%" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 1, spring = "mid" })
hl.animation({ leaf = "layersIn",  enabled = true,  speed = 1, spring = "mid" })
hl.animation({ leaf = "layersOut", enabled = true,  speed = 1, spring = "quick" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 1, spring = "quick", style = "slide" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 1,    spring = "mid" })
hl.animation({ leaf = "monitorAdded",    enabled = true,  speed = 1,    spring = "slow" })