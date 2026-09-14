--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({ 
    match = { 
        class = "steam", 
        title = "^notificationtoasts_.*" 
    }, 
    rounding = 0,
    opacity = "1.0 override",
    no_blur = true,
})

hl.layer_rule({
    name = "rofi",
    match = { namespace = "rofi" },

    animation = "slide bottom",
    dim_around = true,
    blur = true
})

hl.layer_rule({
    name = "waybar",
    match = { namespace = "waybar" },

    animation = "slide top",
    blur = true,
    blur_popups = true,
    ignore_alpha = 0,
})

hl.layer_rule({
    name = "swaync-center",
    match = { namespace = "swaync-control-center" },

    ignore_alpha = 0,
    animation = "slide right",
    dim_around = true,
    blur = true
})

hl.layer_rule({
    name = "swaync-notif",
    match = { namespace = "swaync-notification-window" },

    ignore_alpha = 0,
    blur = true
})

hl.layer_rule({
    name = "wlogout",
    match = { namespace = "logout_dialog" },

    blur = true
})

hl.layer_rule({
    name = "swayosd",
    match = { namespace = "swayosd" },

    animation = "slide top",
    ignore_alpha = 0,
    blur = true
})