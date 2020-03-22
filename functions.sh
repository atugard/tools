s(){
    echo "Are you sure that you want to shut down your computer?"
    read answer
    if [ "$answer" = "yes" ] || [ "$answer" = "y" ]; then
        doas shutdown -P now
    fi
}

#Change this function to search for config files in ~/dotfiles/* rather than ~/.config/*, since these are symbolically linked to the latter anyway.
config(){
    if [ "$1" = "i3" ]; then
        $EDITOR ~/dotfiles/i3/config
    elif [ "$1" = "picom" ]; then
        $EDITOR ~/dotfiles/picom/picom.conf
    elif [ "$1" = "dunst" ]; then
        $EDITOR ~/dotfiles/dunst/dunstrc
    elif [ "$1" = "vim" ]; then
        $EDITOR ~/dotfiles/vim/.vimrc
    elif [ "$1" = "zsh" ]; then
        $EDITOR ~/dotfiles/zsh/.zshrc
    elif [ "$1" = "rofi" ]; then
        $EDITOR ~/dotfiles/rofi/config
    elif [ "$1" = "polybar" ]; then
        $EDITOR ~/dotfiles/polybar/config
    elif [ "$1" = "bspwm" ]; then
        $EDITOR ~/dotfiles/bspwm/bspwmrc
    elif [ "$1" = "bindings" ]; then
        $EDITOR ~/dotfiles/sxhkd/sxhkdrc
    elif [ "$1" = "st" ]; then
        $EDITOR ~/st/config.h
    elif [ "$1" = "dwm" ]; then
        $EDITOR ~/dwm/config.
    elif [ "$1" = "status" ]; then
        $EDITOR ~/dwmstatus/dwmstatus.c
    elif [ "$1" = "dmenu" ]; then
        $EDITOR ~/dmenu/config.h
    else
        echo "Sorry, couldn't find a config file by query: $1 !"
    fi
}

logout(){pkill x}

p(){bluetoothctl pair $beats_id}
c(){bluetoothctl connect $beats_id}

en(){setxkbmap -layout us}
fr(){setxkbmap -layout ca -variant fr}

em(){ doas emerge --ask $1 }
ed(){doas vim $1}

vol(){~/pulsemixer/pulsemixer $1 $2}

update(){ doas emerge -uDU --keep-going --with-bdeps=y @world }
sync() { doas eix-sync }