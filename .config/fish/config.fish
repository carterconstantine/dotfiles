source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

if test "$TERM" != "linux"
    starship init fish | source
end
fish_add_path /home/carterconst/.spicetify
