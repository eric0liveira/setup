# Install Chocolatey with CPM
# @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

powershell.exe -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
powershell.exe -Command SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# Run the command on your computer
# powershell  -ExecutionPolicy ByPass  -command "& 'D:\chocolatey.ps1'"

choco feature enable -n=allowGlobalConfirmation

choco install explorer-winconfig --params "'/SHOWHIDDEN:yes /SHOWEXTENSIONS:yes /SHOWFULLPATH:yes /SHOWENCRYPTED:no /SHOWCHECKBOXES:no /USESHARINGWIZARD:no /USEVIEW:details'"
choco install desktopicons-winconfig --params "'/Desktop:NO /UserFiles:NO /ControlPanel:NO /Network:NO /RecycleBin:YES /OneDrive:NO'"

# Upgrade packages
choco upgrade all -y

# Basics
choco install microsoft-windows-terminal
choco install powershell-core
choco install 7zip
choco install devtoys

# PowerBI
choco install powerbi

# Dev
choco install ilspy
choco install linqpad
choco install microsoftazurestorageexplorer
choco install nodejs-lts

# GIT
choco install git

# DB
choco install beekeeper-studio
choco install sql-server-management-studio
choco install mysql.workbench --version=8.0.20

# Music/Video
choco install vlc

# Browser
choco install googlechrome
choco install firefox

# Text Editor
choco install vscode

# Pass
choco install keepassxc

