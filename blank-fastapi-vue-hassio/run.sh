#!/usr/bin/with-contenv bashio

echo Running flask hello world
uvicorn main:app --host localhost --port 8000

