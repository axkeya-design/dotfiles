if status is-interactive
    set -g fish_greeting ""
    alias cmatrix="cmatrix -C blue -b"
    alias clock="tty-clock -c -C 4 -b"
    alias nv="nvim"
    alias v="vim"
    alias yz="yazi"
    alias icat="kitty +kitten icat"
    alias mpv-term="mpv -vo=tct --really-quiet"
    alias mpv-play="mpv --no-video --really-quiet"
    alias yt-dlp-video="yt-dlp -f 'bv+ba/ba' --no-playlist --merge-output-format mp4"
    alias yt-dlp-audio="yt-dlp -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --no-playlist"
    alias yt-dlp-audio-playlist="yt-dlp -x --audio-format mp3 --audio-quality 0 --embed-thumbnail"
    alias yt-dlp-playlist="yt-dlp -P . -f "bv+ba/b" --merge-output-format mp4"
    alias pokego="pokego -r 1-8"
    alias weather="curl wttr.in"
    alias myphone="ssh -J serveo.net u0_a243@myphone"
    alias start_ssh="ssh -R axkeya:22:localhost:22 serveo.net"
    alias cbonsai="cbonsai -li -k 4,3,12,11"
    alias mount-usb="sudo mount -o uid=1000,gid=1000,umask=0022 /dev/sdc1 /mnt/usb"
    alias ddgr-wikipedia="ddgr -w wikipedia.org"
    alias ddgr-github="ddgr -w github.com"
    alias ddgr-geekforgeeks="ddgr -w geeksforgeeks.org"
    alias csakura="csakura -c sky"
    alias qt5ct="env -u QT_STYLE_OVERRIDE qt5ct"
    alias qt6ct="env -u QT_STYLE_OVERRIDE qt6ct"
    alias clamscan-full="sudo clamscan -r -i --exclude-dir="^/sys" --exclude-dir="^/proc" --exclude-dir="^/dev" --move=/tmp/quarantine /"
    alias clamscan-full-home="sudo clamscan -r -i --exclude-dir="^/sys" --exclude-dir="^/proc" --exclude-dir="^/dev" --move=/tmp/quarantine ~"

    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx TERM xterm-256color
end
