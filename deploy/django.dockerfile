FROM python:3.12-slim

EXPOSE 8000

RUN apt-get update && \
    apt-get install -y libpq-dev gcc

RUN pip install poetry && \
    poetry config virtualenvs.create false && \
    poetry config installer.max-workers 10

COPY backend/pyproject.toml backend/poetry.lock  ./
RUN poetry install --no-root --no-interaction --no-ansi

COPY ./deploy/common /
RUN chmod +x /entrypoint.sh

COPY backend/ /app/

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]