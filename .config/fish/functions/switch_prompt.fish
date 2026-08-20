function switch_prompt
    set -l prompt_dir ~/.config/fish/prompts
    set -l conf_dir ~/.config/fish/conf.d

    switch $argv[1]
        case minimal min 1
            ln -sf $prompt_dir/fish_minimal_line.fish $conf_dir/fish_prompt.fish
            echo "Prompt switched to Minimal"
        case blue line 2
            ln -sf $prompt_dir/fish_blue_line.fish $conf_dir/fish_prompt.fish
            echo "Prompt switched to Blue Line"
        case twoline two 3
            ln -sf $prompt_dir/fish_two_line.fish $conf_dir/fish_prompt.fish
            echo "Prompt switched to Two Line"
        case '*'
            echo "Usage: switch_prompt [minimal|blue|twoline]"
            return 1
    end

    source $conf_dir/fish_prompt.fish
end
