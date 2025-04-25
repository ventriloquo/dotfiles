if [[ "$(tty)" = "/dev/tty1" ]]; then
  /usr/libexec/pipewire-launcher &
  mako &
  dbus-run-session sway
fi
