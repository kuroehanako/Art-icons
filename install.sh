#/bin/sh

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
fi

echo ""

usage () {
cat << EOF
Usage: $0 [OPTION]...

Options:
   -n, --noapps              Without Application icons
   -c, --color  VARIANT    Select Color 
   -h , --help      Show help
EOF
}

# check command avalibility
function has_command() {
  command -v $1 > /dev/null
}