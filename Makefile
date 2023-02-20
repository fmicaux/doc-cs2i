help:
	@grep '#' Makefile

serve: # serveur de dev
	docker compose -f dev.yml up -d

build: # build de mon image

	docker compose build

deploy: # deploiement
	docker compose up -d --build
