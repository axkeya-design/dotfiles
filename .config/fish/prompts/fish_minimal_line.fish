function fish_prompt
    set -l last_status $status
    set -l status_color (test $last_status -eq 0; and echo cyan; or echo red)

    set_color $status_color
    echo -n "󰣇 "
    set_color blue
    echo -n (prompt_pwd)

    if type -q git
        set -l branch (git branch --show-current 2>/dev/null)
        if test -n "$branch"
            set_color brblack
            echo -n " ($branch)"
        end
    end

    set_color $status_color
    echo -n " › "
    set_color normal
end
