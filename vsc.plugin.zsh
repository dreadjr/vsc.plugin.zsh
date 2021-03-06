#!/bin/zsh
vscode_open() {
    open -a "Visual Studio Code" $* &> /dev/null
    if [ $? == 1 ]; then
      open -a "Visual Studio Code - Insiders" $* &> /dev/null
    fi
}


# if [[ "$OSTYPE" == darwin* ]]; then
#     local _vsc_darwin_paths > /dev/null 2>&1
#     _vsc_darwin_paths=(
#         "/Applications/Visual Studio Code.app/Contents/MacOS/Electron"
#         "$HOME/Applications/Visual Studio Code.app/Contents/MacOS/Electron"
#         "/Applications/Visual Studio Code - Insiders.app/Contents/MacOS/Electron"
#         "$HOME/Applications/Visual Studio Code - Insiders.app/Contents/MacOS/Electron"
#     )
#     for _vsc_path in $_vsc_darwin_paths; do
#         if [[ -a $_vsc_path ]]; then
#             vscode_open () { "$_vsc_path" $* }
#             alias vsc=vscode_open
#             break
#         fi
#     done
# fi

# alias vscc='vsc .'






# _open_with_vscode() {
#     open -a "Visual Studio Code" $* &> /dev/null
#     if [ $? == 1 ]; then
#       open -a "Visual Studio Code - Insiders" $* &> /dev/null
#     fi
# }
# alias vscode='_open_with_vscode'


# open -a "Visual Studio Code" &> /dev/null
# if [ $? == 1 ]; then
#   echo "Trying insiders"
#   #open_command -a "Visual Studio Code"
#   open -a "Visual Studio Code - Insiders" &> /dev/null
# fi




# alias vscode='code'

# #
# # If the code command is called without an argument, launch VS Code
# # If code is passed a directory, cd to it and open it in VS Code
# # If code is passed a file, open it in VS code
# #
# function code {
#     if [[ $# = 0 ]]
#     then
#         open_command -a "Visual Studio Code"
#     else
#         local argPath="$1"
#         [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
#         open_command -a "Visual Studio Code" "$argPath"
#     fi
# }
