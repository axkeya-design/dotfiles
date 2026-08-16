if status is-interactive
    set -g fish_greeting ""

    alias nv="nvim"
    alias v="vim"
    alias yz="yazi"

    alias mpv-term="mpv -vo=tct --really-quiet"
    alias mpv-play="mpv --no-video --really-quiet"

    alias yt-dlp-video="yt-dlp -f 'bv+ba/ba' --no-playlist --merge-output-format mp4"
    alias yt-dlp-video-playlist='yt-dlp -P . -f "bv+ba/b" --merge-output-format mp4'
    alias yt-dlp-audio="yt-dlp -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --no-playlist"
    alias yt-dlp-audio-playlist="yt-dlp -x --audio-format mp3 --audio-quality 0 --embed-thumbnail"
    alias yt-sub='yt-dlp --skip-download --write-subs --write-auto-subs --sub-format srt --sub-lang "ru,en"'

    alias icat="kitty +kitten icat"
    alias weather="curl wttr.in"
    alias csakura="csakura -c sky"
    alias cbonsai="cbonsai -li -k 4,3,12,11"
    alias pokego="pokego -r 1-8"
    alias cmatrix="cmatrix -C blue -b"
    alias clock="tty-clock -c -C 4 -b"
    alias lavat="lavat -c blue"

    alias ddgr-wikipedia="ddgr -w wikipedia.org"
    alias ddgr-github="ddgr -w github.com"
    alias ddgr-geekforgeeks="ddgr -w geeksforgeeks.org"

    alias ssh="kitty +kitten ssh"

    alias clamscan-full='sudo clamscan -r -i --exclude-dir="^/sys" --exclude-dir="^/proc" --exclude-dir="^/dev" --move=/tmp/quarantine /'
    alias clamscan-full-home='sudo clamscan -r -i --exclude-dir="^/sys" --exclude-dir="^/proc" --exclude-dir="^/dev" --move=/tmp/quarantine ~'

    set -gx EDITOR nvim
    set -gx VISUAL nvim
end
