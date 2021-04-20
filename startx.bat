start /B x410.exe /desktop /public
start "" /B "pulseaudio.exe"
bash -c "export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0;  export PULSE_SERVER=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'); openbox-session; pkill '(gpg|ssh)-agent';taskkill.exe /IM x410.exe /F;taskkill.exe /IM pulseaudio.exe /F;"
