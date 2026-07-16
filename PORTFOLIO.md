# Portfolio and Career Mapping

## Project Pitch

**Clinical RAG Safety Gateway** solves this real-world problem:

Clinical assistants need retrieval, source attribution, and explicit abstention before answers reach care teams.

It combines `question-answering`, `sentence-similarity`, `text-classification`, `summarization` with data ingestion, evaluation, observability, and scalable
service design.

## Why This Is More Than an API Wrapper

- Owns ingestion, validation, model artifacts, and evaluation datasets.
- Exposes evidence and confidence instead of returning opaque text.
- Includes offline evaluation and a CI release gate.
- Defines tracing, rollback, human review, and failure recovery.
- Provides a realistic path from free local baseline to production stack.

## AI Engineering Job Description Mapping

- Production RAG design and retrieval evaluation
- Healthcare AI safety, abstention, and auditability
- Vector databases and metadata-aware retrieval
- Agent orchestration with human review
- LLMOps tracing, regression tests, and release gates

## Resume-Ready Impact Targets

Replace targets with measured results after completing the roadmap:

- Reach Recall@5 >= 0.85 on a reviewed retrieval set
- Maintain 100% citation coverage for non-abstained answers
- Block 100% of diagnosis or emergency-advice test prompts
- Keep p95 retrieval latency below 300 ms at 50 requests/second

Example resume format:

> Built Clinical RAG Safety Gateway, a production-oriented healthcare-ai system
> using FastAPI for typed service endpoints, LangGraph for durable safety and escalation workflows, LlamaIndex for ingestion and retrieval abstractions; measured
> retrieval_accuracy, abstention_coverage, citation_coverage and
> enforced regression thresholds in CI.

## Interview Discussion Areas

- Why this architecture fits the problem and where it fails
- Retrieval/model choice and baseline comparisons
- Evaluation-set construction and metric trade-offs
- Data privacy, authorization, and human escalation
- Scaling, caching, index tuning, and failure recovery
- Model, prompt, dataset, and deployment lineage
