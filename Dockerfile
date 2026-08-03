FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
# Install gosu for a clean, signal-safe privilege drop in the entrypoint.
RUN apt-get update && apt-get install -y --no-install-recommends gosu \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Create appuser and /app/data at build time.
# The Fly volume is mounted over /app/data at runtime (root-owned);
# docker-entrypoint.sh chowns it to appuser before dropping privileges.
RUN useradd -r -u 1001 appuser \
    && mkdir -p /app/data \
    && chown -R appuser /app \
    && chmod +x /app/docker-entrypoint.sh
# Stay as root so the entrypoint can chown the mounted volume.
EXPOSE 8000
ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD ["uvicorn", "zerobeacon_mf_1000_main:app", "--host", "0.0.0.0", "--port", "8000"]
