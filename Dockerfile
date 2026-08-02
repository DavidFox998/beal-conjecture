FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Run as non-root user
RUN useradd -r -u 1001 appuser && chown -R appuser /app
USER appuser
EXPOSE 8000
CMD ["uvicorn", "zerobeacon_mf_1000_main:app", "--host", "0.0.0.0", "--port", "8000"]
