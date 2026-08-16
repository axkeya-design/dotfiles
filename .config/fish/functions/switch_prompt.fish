function switch_prompt
    set -l dir ~/.config/fish/conf.d

    switch $argv[1]
        case minimal min 1
            ln -sf $dir/fish_minimal_line.fish $dir/fish_prompt.fish
            echo "Prompt switched to Minimal"
        case blue line 2
            ln -sf $dir/fish_blue_line.fish $dir/fish_prompt.fish
            echo "Prompt switched to Blue Line"
        case twoline two 3
            ln -sf $dir/fish_two_line.fish $dir/fish_prompt.fish
            echo "Prompt switched to Two Line"
        case '*'
            echo "Usage: switch_prompt [minimal|blue|twoline]"
            return 1
    end

    source $dir/fish_prompt.fish
end
