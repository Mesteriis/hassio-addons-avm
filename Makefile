SHELL := /bin/bash
DOCKER_USER=mesteriis
DOCKER_REPO=hassio
GIT_SHA=$(shell git rev-parse --short HEAD)
BASE_IMAGE_DOCKERFILES=$(shell find ./base_docker_images/ -name 'Dockerfile')


ifneq ("$(wildcard .env)", "")
    include .env
    export $(shell sed 's/=.*//' .env)

else
    $(shell cp .env.example .env)
    include .env
    export $(shell sed 's/=.*//' .env)
endif

ifneq ("$(wildcard .env)", "")
    $(info $(shell echo "Loading environment variables from .env file..."))
    $(info $(shell cat .env))
    $(info $(shell echo "***********************************************"))
endif

.PHONY: build push all

all: build push

build:
	@echo "Собираем все Docker образы..."
	@for dockerfile in $(BASE_IMAGE_DOCKERFILES); do \
		dir=$$(dirname $$dockerfile); \
		tag_name=$$(echo $$dir | sed 's|^\./||' | tr '/' '-' | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]'); \
		base_tag="$(DOCKER_USER)/$(DOCKER_REPO)-$$tag_name"; \
		echo "Собираем образ $$base_tag:$(GIT_SHA)"; \
		docker build -t $$base_tag:$(GIT_SHA) -t $$base_tag:latest $$dir; \
	done

push:
	@echo "Отправляем образы в Docker Hub..."
	@for dockerfile in $(BASE_IMAGE_DOCKERFILES); do \
		dir=$$(dirname $$dockerfile); \
		tag_name=$$(echo $$dir | sed 's|^\./||' | tr '/' '-' | tr -d '[:space:]' | tr '[:upper:]' '[:lower:]'); \
		base_tag="$(DOCKER_USER)/$(DOCKER_REPO)-$$tag_name"; \
		echo "Пушим образ $$base_tag:$(GIT_SHA)"; \
		docker push $$base_tag:$(GIT_SHA); \
		docker push $$base_tag:latest; \
	done