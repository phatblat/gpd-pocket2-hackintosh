#!/usr/bin/env bash
#
# Wrapper script for the createinstallmedia command located inside the macOS
# installer app bundle.
#

# File name of the macOS installer app, located in /Applications
installer_bundle="Install macOS Catalina.app"

# Removable media volume name under /Volumes
volume_name="Kingston"

# Usage: createinstallmedia --volume <path to volume to convert>
#
# Arguments
# --volume, A path to a volume that can be unmounted and erased to create the install media.
# --nointeraction, Erase the disk pointed to by volume without prompting for confirmation.
# --downloadassets, Download on-demand assets that may be required for installation.
#
# Example: createinstallmedia --volume /Volumes/Untitled
#
# This tool must be run as root.

sudo \
    "/Applications/$installer_bundle/Contents/Resources/createinstallmedia" \
    --volume "/Volumes/$volume_name" \
    "/Applications/$installer_bundle" \
    --nointeraction \
    --downloadassets
