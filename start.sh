curl -LsSf https://astral.sh/uv/install.sh | sh
source "$HOME"/.local/bin/env

sudo apt install openjdk-17-jre-headless

uv sync --no-dev --no-sources
uv run python main.py

cd onedev-latest || exit
chmod +x ./bin/server.sh
source ./bin/server.sh console
