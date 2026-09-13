------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@144",
    position = "0x0",
    scale    = 1.2,
})

hl.workspace_rule({ workspace = "1", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "6", monitor = "eDP-1", persistent = false })
hl.workspace_rule({ workspace = "7", monitor = "eDP-1", persistent = false })
hl.workspace_rule({ workspace = "8", monitor = "eDP-1", persistent = false })
hl.workspace_rule({ workspace = "9", monitor = "eDP-1", persistent = false })
hl.workspace_rule({ workspace = "10", monitor = "eDP-1", persistent = false })
