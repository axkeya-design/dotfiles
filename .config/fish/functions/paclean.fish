function paclean
    set -l orphans (pacman -Qtdq)
    if test -n "$orphans"
        sudo pacman -Rns --noconfirm $orphans
    end

    if type -q yay
        yay -Scc --noconfirm
    else
        echo y | sudo pacman -Scc
        echo y | sudo pacman -Scc
    end
end
