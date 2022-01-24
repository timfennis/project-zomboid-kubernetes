#!/usr/bin/env bash
set -euo pipefail

: "$RCON_PASSWORD"

/rcon/rcon-cli --port 27015 --password $RCON_PASSWORD quit
