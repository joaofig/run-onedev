FROM mcr.microsoft.com/openjdk/jdk:21-ubuntu
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
RUN apt install util-linux
RUN /root/.local/bin/uv sync --no-dev --no-sources;
RUN chmod +x ./bin/server.sh
CMD ["bash", "./start.sh"]
