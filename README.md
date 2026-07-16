# Clinical RAG Safety Gateway

A citation-first healthcare RAG gateway with abstention, evidence checks, and synthetic clinical policy data.

Generated on 2026-07-16 as an independent production-AI architecture project.

## Real-World Problem

Clinical assistants need retrieval, source attribution, and explicit abstention before answers reach care teams.

## Hugging Face Tasks

- `question-answering`
- `sentence-similarity`
- `text-classification`
- `summarization`

## Recommended Production Stack

- FastAPI for typed service endpoints
- LangGraph for durable safety and escalation workflows
- LlamaIndex for ingestion and retrieval abstractions
- PostgreSQL plus pgvector for filtered vector search
- Redis for caching and rate limiting
- OpenTelemetry plus Phoenix for traces and evaluation

## Included

- Runnable Python pipeline with no runtime dependencies
- Local JSON HTTP inference service
- Public-data API connector with explicit provenance
- Reproducible training script
- Held-out evaluation command
- Synthetic dataset with explicit provenance
- Trained transparent baseline model
- Architecture and production-boundary documentation
- Unit tests, CI workflow, and Dockerfile
- Hugging Face-ready model and dataset cards

## Architecture

1. Policy document ingestion
1. Hybrid token retrieval
1. Evidence sufficiency gate
1. Abstention and escalation policy
1. Citation and safety evaluation

See [ARCHITECTURE.md](ARCHITECTURE.md) for the full flow and production
boundaries.

## Quick Start

```bash
python3 -m unittest discover -s tests
PYTHONPATH=src python3 -m clinical_rag_safety.cli "When should medication reconciliation be completed?"
PYTHONPATH=src python3 evaluate.py
PYTHONPATH=src python3 -m clinical_rag_safety.service
```

The service exposes `GET /health` and `POST /predict`.

Rebuild the model:

```bash
python3 train.py
```

## Baseline Evaluation

- Held-out synthetic examples: 4
- Accuracy: 1
- Target metrics: retrieval_accuracy, abstention_coverage, citation_coverage

This score verifies that the code and evaluation contract work. It does not
claim production performance.

## Hugging Face Artifacts

When the controller has a Hugging Face token and namespace configured, it
publishes:

- Dataset: `clinical-rag-safety-gateway-20260716-dataset`
- Model: `clinical-rag-safety-gateway-20260716-model`

## Portfolio Value

This repository maps to production AI engineering work in:

- Production RAG design and retrieval evaluation
- Healthcare AI safety, abstention, and auditability
- Vector databases and metadata-aware retrieval
- Agent orchestration with human review
- LLMOps tracing, regression tests, and release gates

See [PORTFOLIO.md](PORTFOLIO.md) for resume-ready impact targets and interview
discussion areas.

## 1-3 Month Expansion

Follow [ROADMAP.md](ROADMAP.md) to add real-world APIs, a stronger open model,
durable orchestration, evaluation, observability, scalability testing, and a
public deployment.

## Safety

Synthetic educational data only. The baseline must not provide diagnosis, treatment, or emergency medical advice.

Review [ARCHITECTURE.md](ARCHITECTURE.md),
[PRODUCTION.md](PRODUCTION.md), [SECURITY.md](SECURITY.md),
[MODEL_CARD.md](MODEL_CARD.md), and [DATASET_CARD.md](DATASET_CARD.md) before
adapting this project.
