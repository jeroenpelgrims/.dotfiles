TEMP=3500
STATE_FILE="/tmp/hyprsunset_state"

if [[ "$(cat "$STATE_FILE" 2>/dev/null)" == "on" ]]; then
    hyprctl hyprsunset identity
    echo "off" > "$STATE_FILE"
else
    hyprctl hyprsunset temperature "$TEMP"
    echo "on" > "$STATE_FILE"
fi

