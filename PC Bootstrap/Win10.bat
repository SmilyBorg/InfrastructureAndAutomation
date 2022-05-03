# bootstrap.bat

# MB Drivers https://www.msi.com/Motherboard/MPG-Z390-GAMING-PRO-CARBON-AC/support#down-driver&Win11%2064
# UMC2040HD Drivers https://www.behringer.com/downloads.html


# Debloat Windows
# https://github.com/builtbybel/ThisIsWin11
# https://github.com/builtbybel/ThisIsWin11/releases

# More Tools
# https://github.com/ChrisTitusTech/win10script


# Run the following with administrative privilages ( win-x command prompt admin)

# Install WSL2 and Ubuntu
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -All
# https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6
# https://wiki.ubuntu.com/WSL
# https://docs.microsoft.com/en-za/windows/wsl/wsl2-kernel

# NFS Tools
Enable-WindowsOptionalFeature -Online -FeatureName "ClientForNFS-Infrastructure" -All
Enable-WindowsOptionalFeature -Online -FeatureName "NFS-Administration" -All


# Install chocolatey and apps https://docs.chocolatey.org/en-us/choco/setup
# From CMD
# @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
# From Powershell 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))


choco upgrade -y all

choco install -y geforce-experience
#choco install -y lghub

choco install -y googlechrome
choco install -y dropbox
choco install -y obsidian

choco install -y microsoft-windows-terminal
choco install -y powertoys
choco install -y 7zip
choco install -y hwinfo
choco install -y files
choco install -y wiztree
choco install -y keybase

choco install -y zerotier-one
choco install -y warp
choco install -y openvpn-community
choco install -y virtualbox

choco install -y putty
choco install -y putty-cac
choco install -y winscp

#choco install -y terraform
#terraform -install-autocomplete
#choco install -y nomad
#choco install -y consul
#choco install -y vault
#choco install -y packer
#choco install -y vagrant

choco install -y git

choco install -y docker-desktop
choco install -y rust
choco install -y python
choco install -y Temurin
choco install -y Temurin8

#choco install -y arduino
choco install -y pycharm-community
choco install -y vscode
choco install -y vscode-drawio
choco install -y vscode-arduino
choco install -y vscode-gitignore
choco install -y vscode-ansible
choco install -y vscode-puppet
choco install -y vscode-python
choco install -y chocolatey-vscode
choco install -y vscode-yaml
choco install -y vscode-jupyter
choco install -y vscode-vsonline
choco install -y ci-cd-assets-vscode
choco install -y vscode-todo-tree
choco install -y vscode-beautify
choco install -y vscode-gitattributes
choco install -y vscode-intellicode
choco install -y vscode-pull-request-github
choco install -y vscode-kubernetes-tools
choco install -y vscode-cloud-code
choco install -y vscode-rust-test-adapter
choco install -y vscode-python-test-adapter
choco install -y vscode-codespellchecker
choco install -y vscode-markdownlint
choco install -y vscode-docker
choco install -y vscode-autohotkey
choco install -y vscode-powershell
choco install -y vscode-gitlens
choco install -y vscode-settingssync
choco install -y devtoys

choco install -y slack
choco install -y discord

choco install -y obs-studio
#choco install -y obs-studio.portable
#choco install -y obs-ndi
#choco install -y autohotkey

choco install -y plex plexmediaserver

choco install -y blender
choco install -y darktable gimp inkscape

choco install -y gopro-quik
choco install -y vlc
choco install -y handbrake

choco install -y Wireshark 
choco install -y nmap

# choco install -y kicad
# choco install -y freecad
choco install -y drawio

choco install -y hugo
choco install -y hugo-extended
choco install -y zola

choco install -y rpi-imager
choco install -y etcher

# choco install -y wsl-ubuntu-2004

choco install -y steam
choco install -y epicgameslauncher
choco install -y twitch
# choco install -y minecraft-launcher
choco install -y gdlauncher
choco install -y amidst

# choco install -y stellarium

# MS App Store
#
# HEVC Video Extensions From Device Manafacturer
# VP9 Video Extensions



# blackmagic desktop video driver
# UMC driver
# Orico HW Raid Manager
# 3D Connexions Spacemouse Driver
#
# MSI Dragon Center
#
# DaVinci Resolve
#
# minecraft + minecraft dungeons
# GD Launcher
#
# HSC Voicepacks for VoiceAttack
#

#
# Echolink
#
#