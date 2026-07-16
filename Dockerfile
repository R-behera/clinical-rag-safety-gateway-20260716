FROM python:3.12-slim

WORKDIR /app
COPY . .

ENV PYTHONPATH=/app/src
CMD ["python", "-m", "clinical_rag_safety.cli", "When should medication reconciliation be completed?"]
