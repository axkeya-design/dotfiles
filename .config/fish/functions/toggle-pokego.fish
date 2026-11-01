function toggle-pokego --description "Enable and disable pokego autostart"
    set -l state_file "$HOME/.config/fish/pokego_autostart"

    if test -f "$state_file"
        rm -f "$state_file"
        echo "pokego autostart: OFF"
    else
        touch "$state_file"
        echo "pokego autostart: ON"
    end
end
