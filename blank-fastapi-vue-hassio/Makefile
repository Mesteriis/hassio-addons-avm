SHELL := /opt/homebrew/bin/fish

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

export-req:
	@echo "Exporting requirements..."
	uv export --no-hashes --format requirements-txt > requirements.txt

run-dev:
	@echo "Running server..."
	uvicorn app.main:app --host localhost --port 8000 --reload

run:
	@echo "Running server..."
	uvicorn app.main:app --host localhost --port 8000
	@echo "Server running at http://localhost:8000"
