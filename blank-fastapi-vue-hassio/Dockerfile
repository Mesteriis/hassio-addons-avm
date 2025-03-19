FROM mesteriis/hassio-python-3.11:latest

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY ./src /app

WORKDIR /app

# Expose the port the app runs on
EXPOSE 8000
# Run the application
CMD ["uvicorn", "main:app"]

