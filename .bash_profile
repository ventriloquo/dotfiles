if [[ "$(tty)" = "/dev/tty1" ]]; then
  /usr/libexec/pipewire-launcher &
  dbus-run-session sway
fi
