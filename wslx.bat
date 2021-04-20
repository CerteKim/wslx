start /B x410.exe /wm /public
start "" /B "pulseaudio.exe"
bash -c "export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0;  export PULSE_SERVER=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'); export DONT_PROMPT_WSL_INSTALL=1; dbus-launch %1 ; pkill '(gpg|ssh)-agent';taskkill.exe /IM x410.exe /F;taskkill.exe /IM pulseaudio.exe /F;"
