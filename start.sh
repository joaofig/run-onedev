curl -LsSf https://astral.sh/uv/install.sh | sh
uv sync --no-dev --no-sources
uv run python main.py
cd onedev-latest || exit
chmod +x ./bin/server.sh
sh ./bin/server.sh console
