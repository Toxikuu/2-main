#!/bin/bash
# Script to launch pipewire with wireplumber and pulseaudio compatibility.

# First, kill any previous instances of pipewire, wireplumber, or pipewire-pulse
# that are running. Multiple instances of the daemon can not be run at the same
# time, and this helps prevent possible errors if a user logs out or logs in
# too fast, and restores audio if Pipewire hangs and needs to be reset.
pkill -u "${USER}" -fx /usr/bin/pipewire-pulse
pkill -u "${USER}" -fx /usr/bin/wireplumber
pkill -u "${USER}" -fx /usr/bin/pipewire

# Start pipewire first.
exec /usr/bin/pipewire &

# Next, we need to wait until pipewire is up before starting wireplumber.
# This prevents a possible race condition where pipewire takes too long
# to start, as some users have run into.
while ! pgrep -f /usr/bin/pipewire &>/dev/null; do
   sleep 0.25
done

# Start wireplumber now that pipewire has been started.
exec /usr/bin/wireplumber &

# Start the pulseaudio server included with pipewire.
exec /usr/bin/pipewire-pulse &
