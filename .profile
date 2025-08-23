if [ -z "$XDG_RUNTIME_DIR" ]; then
  XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"

  mkdir -pm 0700 "$XDG_RUNTIME_DIR"
  export XDG_RUNTIME_DIR
fi

if [ "$(tty)" = "/dev/tty1" ]; then
  /usr/libexec/pipewire-launcher &
  dbus-run-session sway
fi
