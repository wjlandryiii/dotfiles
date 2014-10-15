UNAME=`uname`

alias xxd='xxd -g 1'

if [[ $UNAME == 'Darwin' ]]; then
    alias fiend='open -a /Applications/Hex\ Fiend.app/Contents/MacOS/Hex\ Fiend'
    alias machoview='open -a /Applications/MachOView.app/Contents/MacOS/MachOView'
    alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
    alias 010='open -a /Applications/010\ Editor.app'
fi
