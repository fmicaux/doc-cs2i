help:
	@grep '#' Makefile

serve: # serveur de dev
	 docker container run -dit --rm --publish 8000:80  --volume ./build:/docs registry.actilis.net/docker-images/mkdocs:latest serve -a 0.0.0.0:80

build: # build de mon image

	docker compose build

deploy: # deploiement
	docker compose up -d --build
