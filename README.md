# CC Docker

## Makefile

Na pasta do projeto execute

    make
    
    ./bin/cc-docker

## Docker

### Construir a imagem

	docker build -t cc-docker .

### Rodar o container

	docker run --rm cc-docker

### Rodar o container e entrar via bash

	docker run -it --rm cc-docker /bin/bash
