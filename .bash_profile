export PATH="$PATH:$HOME/.local/bin:$PATH"
if [ "$(tty)" = "/dev/tty1" ]; then
  #dbus-run-session sway
  startxfce4
fi
