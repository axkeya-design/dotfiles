function fish_prompt
    set -l bg_user 303446     
    set -l fg_user 1793d1     

    set -l bg_path 414559     
    set -l fg_path 8caaee     

    set -l bg_git  51576d    
    set -l fg_git  a6e3a1   

    set -l icon_arch "󰣇"   
    set -l icon_folder "󰉋"
    set -l icon_git "󰘬"  
    set -l arrow ""   

    set_color -b $bg_user $fg_user
    echo -n " $icon_arch "
    set_color $fg_user
    echo -n "$USER "

    set_color -b $bg_path $bg_user
    echo -n "$arrow"

    set_color -b $bg_path $fg_path
    echo -n " $icon_folder "(prompt_pwd)" "

    if type -q git; and git rev-parse --is-inside-work-tree >/dev/null 2>&1
        set -l branch (git branch --show-current 2>/dev/null; or git rev-parse --short HEAD 2>/dev/null)

        set_color -b $bg_git $bg_path
        echo -n "$arrow"

        set_color -b $bg_git $fg_git
        echo -n " $icon_git $branch "

        set_color -b normal $bg_git
        echo -n "$arrow"
    else
        set_color -b normal $bg_path
        echo -n "$arrow"
    end

    set_color normal
    echo -n " "
end
