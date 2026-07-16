# Architecture

## Problem

Clinical assistants need retrieval, source attribution, and explicit abstention before answers reach care teams.

## System Flow

```mermaid
flowchart LR
    A["Real-world API or event stream"] --> B["Validated ingestion"]
    B --> C["Versioned raw and curated data"]
    C --> D["Policy document ingestion"]
    D --> E["Hybrid token retrieval"]
    E --> F["Evidence sufficiency gate"]
    F --> G["Abstention and escalation policy"]
    G --> H["Citation and safety evaluation"]
    H --> I["Prediction, evidence, and review signal"]
    I --> J["Evaluation and release gate"]
    I --> K["OpenTelemetry traces and service metrics"]
    J --> L["Model and dataset registry"]
```

## Components

- **Policy document ingestion**
- **Hybrid token retrieval**
- **Evidence sufficiency gate**
- **Abstention and escalation policy**
- **Citation and safety evaluation**

## Recommended Production Stack

- FastAPI for typed service endpoints
- LangGraph for durable safety and escalation workflows
- LlamaIndex for ingestion and retrieval abstractions
- PostgreSQL plus pgvector for filtered vector search
- Redis for caching and rate limiting
- OpenTelemetry plus Phoenix for traces and evaluation

## Hugging Face Tasks

- `question-answering`
- `sentence-similarity`
- `text-classification`
- `summarization`

## Model Architecture

The included baseline is a transparent token-prototype model. Training builds
per-label token weights and inverse-document-frequency retrieval weights from
the synthetic training split. The runtime returns a prediction, confidence,
review flag, and evidence documents. This baseline is intentionally small so
it can run in CI without paid compute.

For production, compare it with domain embeddings, gradient-boosted models, or
fine-tuned transformer models using the same held-out evaluation contract.

## Production Boundaries

- Validate and version all input schemas.
- Keep human review for low-confidence or high-impact decisions.
- Store prompts, traces, model versions, and dataset versions together.
- Do not treat synthetic evaluation performance as production evidence.
- Add authentication, authorization, encryption, and retention controls.

## Known Risks

Synthetic educational data only. The baseline must not provide diagnosis, treatment, or emergency medical advice.
