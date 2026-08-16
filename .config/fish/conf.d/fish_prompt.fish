function fish_prompt
    # --- Палитра (Muted / Minimal) ---
    set -l bg_user 303446     # Глубокий темный
    set -l fg_user 1793d1     # Фирменный синий цвет Arch Linux!

    set -l bg_path 414559     # Серый фон для пути
    set -l fg_path 8caaee     # Приглушенный голубой

    set -l bg_git  51576d     # Серый фон для Git
    set -l fg_git  a6e3a1     # Мягкий зеленый

    # --- Иконки JetBrains / Nerd Fonts ---
    set -l icon_arch "󰣇"       # Иконка Arch Linux (Nerd Fonts)
    set -l icon_folder "󰉋"     # Иконка папки
    set -l icon_git "󰘬"        # Иконка Git ветки
    set -l arrow ""          # Разделитель Powerline

    # 1. Блок Arch + Username
    set_color -b $bg_user $fg_user
    echo -n " $icon_arch "
    set_color $fg_user
    echo -n "$USER "

    # Переход: User -> Path
    set_color -b $bg_path $bg_user
    echo -n "$arrow"

    # 2. Блок пути (Directory)
    set_color -b $bg_path $fg_path
    echo -n " $icon_folder "(prompt_pwd)" "

    # 3. Блок Git (выводится только если мы в git-репозитории)
    if type -q git; and git rev-parse --is-inside-work-tree >/dev/null 2>&1
        set -l branch (git branch --show-current 2>/dev/null; or git rev-parse --short HEAD 2>/dev/null)

        # Переход: Path -> Git
        set_color -b $bg_git $bg_path
        echo -n "$arrow"

        # Блок ветки
        set_color -b $bg_git $fg_git
        echo -n " $icon_git $branch "

        # Финальная стрелка после Git
        set_color -b normal $bg_git
        echo -n "$arrow"
    else
        # Финальная стрелка после Path (если не в git)
        set_color -b normal $bg_path
        echo -n "$arrow"
    end

    # Сброс и красивый указатель ввода
    set_color normal
    echo -n " "
end
