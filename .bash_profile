UNAME=`uname`

alias xxd='xxd -g 1'

if [[ $UNAME == 'Darwin' ]]; then
    alias fiend='open -a /Applications/Hex\ Fiend.app/Contents/MacOS/Hex\ Fiend'
    alias machoview='open -a /Applications/MachOView.app/Contents/MacOS/MachOView'
    alias hopper='open -a /Applications/Hopper\ Disassembler.app/Contents/MacOS/Hopper\ Disassembler'
    alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
fi
