FROM openjdk:17-oracle
LABEL authors="joaofig"

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN source $HOME/.local/bin/env

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV UV_COMPILE_BYTECODE=1
ENV UV_LINK_MODE=copy
ENV PORT=6610

EXPOSE 6610

COPY . .
RUN /root/.local/bin/uv sync --no-dev --no-sources;
WORKDIR /onedev-latest
RUN chmod +x ./bin/server.sh
RUN ["/root/.local/bin/uv", "run", "python", "/app/main.py"]
