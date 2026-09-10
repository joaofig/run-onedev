FROM amazoncorretto:21
LABEL authors="joaofig"

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV UV_COMPILE_BYTECODE=1
ENV UV_LINK_MODE=copy
ENV PORT=8080

COPY . .
RUN uv sync --no-dev
RUN uv run python main.py

