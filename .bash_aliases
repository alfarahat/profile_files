
alias vi=vim
alias a=clear
alias clean_cache='free -m && sync && echo 3 > /proc/sys/vm/drop_caches && free -m'
alias dd='dd status=progress'
alias d='date +%F-%H%M'
alias matrix='cmatrix -Ba'
alias ssh='ssh -o StrictHostKeyChecking=accept-new'

#alias domc='rdesktop -g 1920x1150 -x roadband -a 16 -0 -z -r sound:local -d home.local -p P@ssw0rd -u administrator 192.168.3.5 &'
#alias domain='rdesktop -g 1440x900 -x roadband -a 16 -0 -z -r sound:local -d lab.local -p ismail -u ismail 192.168.100.1 &'
#alias win10c-user1='rdesktop -g 1440x900 -x roadband -a 16 -0 -P -z -r sound:local -d lab.local -p user1 -u user1 192.168.100.3 &'
#alias win10c-user2='rdesktop -g 1440x900 -x roadband -a 16 -0 -P -z -r sound:local -d lab.local -p user2 -u user2 192.168.100.3 &'
#alias win10c-user3='rdesktop -g 1440x900 -x roadband -a 16 -0 -P -z -r sound:local -d lab.local -p user3 -u user3 192.168.100.3 &'
#alias win10-ismail='rdesktop -g 1440x900 -x roadband -a 16 -0 -P -z -d lab.local -p ismail -u ismail 192.168.100.3 &'
#alias win10='rdesktop -g 1440x900 -x roadband -a 16 -0 -P -z -p ismail -u ismail 192.168.100.10 &'
alias win10='rdesktop -g 1440x900 -x roadband -a 32 -c -0 -P -r clipboard:CLIPBOARD -p ismail -u ismail 192.168.100.10 -5 &'

alias zfs-scriptes='cd "/storage/data/dev/zfs/is-pro_appliance/2020.9/scripts"'

alias yt="youtube-dl --add-metadata -ic"


#alias showmaster='sudo virsh list --all'
#alias startubuntutv='sudo virsh start ubuntu18.04 && sudo virsh list --all'

alias domain="xfreerdp /u:"ismail" /d:lab.local /v:192.168.100.1:3389 /w:1440  /h:900 /p:ismail &"
#alias win10="xfreerdp /u:"ismail" /v:192.168.100.10:3389 /w:1440  /h:900 /p:ismail &"



