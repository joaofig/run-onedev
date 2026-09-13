curl -LsSf https://astral.sh/uv/install.sh | sh
source "$HOME"/.local/bin/env

/usr/bin/sudo apt install util-linux

uv sync --no-dev --no-sources
uv run python main.py

cd onedev-latest || exit
chmod +x ./bin/server.sh
source ./bin/server.sh console
