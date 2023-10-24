#!/bin/bash

# Change to workspace 2 to run the layout for i3
i3-msg 'workspace 2'

# check for workspace 2
CURRENT_WORKSPACE=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name')
if [[ $CURRENT_WORKSPACE = 2 ]]; then
  source /media/tera/config-files/layout_manager.sh /home/daniel/.config/i3-layout-manager/layouts/layout-S2.json
fi
