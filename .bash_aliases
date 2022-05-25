
alias vi=vim
alias a=clear
alias python='/usr/bin/python3'
alias d='date +%F-%H%M'
alias clean_cache='free -m && sync && echo 3 > /proc/sys/vm/drop_caches && free -m'
alias ls.f='find . -maxdepth 1 -name ".*" -type f  -printf "%f\n"'
alias ls.d='find . -maxdepth 1 -name ".*" -type d  -printf "%f\n"'
alias matrix='cmatrix -Ba'
alias ssh='ssh -o StrictHostKeyChecking=accept-new'
alias vms='virsh list --all'
alias tree='tree --dirsfirst -C'
alias dd='dd status=progress'

alias yt="yt-dlp --add-metadata -ic --no-playlist --write-info-json --write-description -f '(bestvideo+bestaudio/best)' "
alias yt-list="yt-dlp --add-metadata -ic --yes-playlist --write-info-json --write-description -f '(bestvideo+bestaudio/best)' -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' "

