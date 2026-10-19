------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/


hl.monitor({
	output = "eDP-1",
	mode = "preferred",
	position = "0x0",
	scale = "1.2",
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "preferred",
    position = "1600x0",
    scale    = "1.2",
})


-- Default Workspace 1 on the built-in laptop screen
hl.workspace_rule({ 
    workspace = 1, 
    monitor = "eDP-1", 
    default = true 
})

-- Default Workspace 2 on the external monitor
hl.workspace_rule({ 
    workspace = 2, 
    monitor = "HDMI-A-1", 
    default = true 
})

------------------
---- STARTUP -----
------------------

-- Focus Workspace 1 on boot
hl.exec_cmd("sleep 1 && hyprctl dispatch focusmonitor eDP-1 && hyprctl dispatch workspace 1")
hl.exec_cmd("sleep 1.2 && hyprctl dispatch movecursortocorner 0")
