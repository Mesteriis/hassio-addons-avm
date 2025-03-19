FROM python:3.11-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc curl && \
    pip install --no-cache-dir uvloop && \
    apt-get remove -y gcc && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.bashrc

CMD ["python"]