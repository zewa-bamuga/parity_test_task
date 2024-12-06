install:
	poetry install

run:
	cp -f ./deploy/docker-compose.yml docker-compose.yml && \
		docker-compose up -d --build --remove-orphans

stop:
	docker-compose down

logs:
	docker-compose logs -f

# Format & Lint
isort:
	isort .

black:
	black .

flake8:
	flake8 .