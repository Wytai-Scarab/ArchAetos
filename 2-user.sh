#!/usr/bin/env bash
#-------------------------------------------------------------------------
#   █████╗ ██████╗  ██████╗██╗  ██╗████████╗██╗████████╗██╗   ██╗███████╗
#  ██╔══██╗██╔══██╗██╔════╝██║  ██║╚══██╔══╝██║╚══██╔══╝██║   ██║██╔════╝
#  ███████║██████╔╝██║     ███████║   ██║   ██║   ██║   ██║   ██║███████╗
#  ██╔══██║██╔══██╗██║     ██╔══██║   ██║   ██║   ██║   ██║   ██║╚════██║
#  ██║  ██║██║  ██║╚██████╗██║  ██║   ██║   ██║   ██║   ╚██████╔╝███████║
#  ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝   ╚═╝    ╚═════╝ ╚══════╝
#-------------------------------------------------------------------------

echo -e "\nINSTALLING AUR SOFTWARE\n"
# You can solve users running this script as root with this and then doing the same for the next for statement. However I will leave this up to you.

echo "CLONING: YAY"
cd ~
git clone "https://aur.archlinux.org/yay.git"
cd ${HOME}/yay
makepkg -si --noconfirm
cd ~
touch "$HOME/.cache/zshhistory"
git clone "https://github.com/ChrisTitusTech/zsh"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/powerlevel10k
ln -s "$HOME/zsh/.zshrc" $HOME/.zshrc

PKGS=(
'autojump'
'awesome-terminal-fonts'
'firedragon' # Firedragon Browser
'dxvk-bin' # DXVK DirectX to Vulcan
'github-desktop-bin' # Github Desktop sync
'lightly-git'
'lightlyshaders-git'
'mangohud' # Gaming FPS Counter
'mangohud-common'
'nerd-fonts-fira-code'
'nordic-darker-standard-buttons-theme'
'nordic-darker-theme'
'nordic-kde-git'
'nordic-theme'
'noto-fonts-emoji'
'papirus-icon-theme'
'plasma-pa'
'ocs-url' # install packages from websites
'sddm-nordic-theme-git'
'snapper-gui-git'
'ttf-droid'
'ttf-hack'
'ttf-meslo' # Nerdfont package
'ttf-roboto'
'zoom' # video conferences
'snap-pac'
'beautyline'
'candy-icons-git'
'sweet-kde-git'
'sweet-gtk-theme-dark'
'sweet-gtk-theme'
'kvantum-theme-sweet-git'
'sweet-theme-git'
'xcursor-sweet'
'plasma5-theme-sweet-git'
'lutris'
'steam'
'steam-native-runtime'
'protonup-git'
'protonup-qt'
'boxtron'
'qbittorrent'
'inkscape'
'libreoffice-fresh'
'spotify'
'zettlr-bin'
'flameshot'
'discord'
'noisetorch'
'fish'
'starship'
'samba'
'minecraft'
'latte-dock-git'
'zotero-git'
'stacer'
'whatsapp-nativefier'
'mcfly'
'bat'
'lsd'
'bitwarden'
'vlc'
'mpv'
'unified-remote-server'
'zeit'
'cht.sh-git'
'zerotier-one'
'clonezilla'
'zoxide'
'realvnc-vnc-viewer'
'realvnc-vnc-server'
'speedtest-cli'
'mc'
'ncdu'
'tmux'
'simplehttp'
'ntop'
'bpytop'
'aria2'
'ncspot'
'ranger'
'fd'
'fzf'
'hyperfine'
'gping'
'curlie'
'balena-etcher'
'hunspell'
'garuda-wallpapers'
'appimagelauncher'
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm --needed $PKG
done

export PATH=$PATH:~/.local/bin
cp -r $HOME/ArchAetos/dotfiles/* $HOME/.config/
pip install konsave
konsave -i $HOME/ArchAetos/kde.knsv
sleep 1
konsave -a kde

echo -e "\nDone!\n"
exit
