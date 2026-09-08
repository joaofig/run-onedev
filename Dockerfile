FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim
LABEL authors="joaofig"

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV UV_COMPILE_BYTECODE=1
ENV UV_LINK_MODE=copy
ENV PORT=8080

COPY . .
RUN uv sync --no-dev

RUN sudo apt-get update
RUN sudo apt-get -y install openjdk-17-jdk

ENV JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64/"

RUN uv run python main.py
WORKDIR /onedev
RUN chmod +x bin/server.sh

CMD ["./bin/server.sh"]