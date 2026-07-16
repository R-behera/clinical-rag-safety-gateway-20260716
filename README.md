# Clinical RAG Safety Gateway

A citation-first healthcare RAG gateway with abstention, evidence checks, and synthetic clinical policy data.

Generated on 2026-07-16 as an independent production-AI architecture project.

## Why It Matters

Clinical assistants need retrieval, source attribution, and explicit abstention before answers reach care teams.

## Included

- Runnable Python pipeline with no runtime dependencies
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
```

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

## Safety

Synthetic educational data only. The baseline must not provide diagnosis, treatment, or emergency medical advice.

Review [SECURITY.md](SECURITY.md), [MODEL_CARD.md](MODEL_CARD.md), and
[DATASET_CARD.md](DATASET_CARD.md) before adapting this project.
