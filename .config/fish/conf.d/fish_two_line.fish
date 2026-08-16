function fish_prompt
    set -l last_status $status

    # Блок 1: Иконка Arch
    set_color -b 005f87 ffffff --bold
    echo -n " 󰣇  "

    # Переход от Arch к Пути
    set_color -b 0087d7 005f87
    echo -n ""

    # Блок 2: Путь
    set_color -b 0087d7 ffffff --bold
    echo -n " 󰉋 "(prompt_pwd)" "

    # Блок 3: Git (если есть) и закрывающие стрелки
    if type -q git
        set -l branch (git branch --show-current 2>/dev/null)
        if test -n "$branch"
            set_color -b 00aaff 0087d7
            echo -n ""
            set_color -b 00aaff 000000 --bold
            echo -n " 󰘬 $branch "
            set_color -b normal 00aaff
            echo -n ""
        else
            set_color -b normal 0087d7
            echo -n ""
        end
    else
        set_color -b normal 0087d7
        echo -n ""
    end

    set_color normal
    echo ""

    # Вторая строка с плавным угловым переходом
    if test $last_status -eq 0
        set_color 00d7ff --bold
        echo -n "╰─==❯ "
    else
        set_color ff5f5f --bold
        echo -n "╰─==✘ "
    end

    set_color normal
end
