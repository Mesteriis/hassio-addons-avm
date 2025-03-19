#!/usr/bin/with-contenv bashio

echo Running flask hello world
uvicorn app.main:app --host localhost --port 8000

