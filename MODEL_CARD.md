---
license: mit
library_name: custom
pipeline_tag: question-answering
datasets:
- {{HF_NAMESPACE}}/clinical-rag-safety-gateway-20260716-dataset
tags:
- synthetic-data
- transparent-baseline
- healthcare-ai
metrics:
- accuracy
---

# Clinical RAG Safety Gateway Baseline Model

## Model Description

This repository contains a small, transparent prototype model for
**Clinical assistants need retrieval, source attribution, and explicit abstention before answers reach care teams.**

The model combines per-label token weights with IDF-weighted evidence
retrieval. It was generated for reproducible architecture demonstrations and
does not call a hosted LLM.

## Evaluation

- Held-out synthetic examples: 4
- Accuracy: 1
- Intended metrics: retrieval_accuracy, abstention_coverage, citation_coverage

## Intended Use

- Architecture prototyping
- CI and evaluation examples
- Local baseline comparisons
- Educational experimentation

## Limitations and Risks

Synthetic educational data only. The baseline must not provide diagnosis, treatment, or emergency medical advice.

The dataset is synthetic and small. Do not use this model for consequential
decisions without representative data, expert review, and production-grade
evaluation.

## Reproducibility

The linked GitHub repository includes `train.py`, the exact dataset split,
evaluation code, and the model JSON format.
