---
license: cc-by-4.0
language:
- en
pretty_name: Clinical RAG Safety Gateway Synthetic Evaluation Set
size_categories:
- n<1K
task_categories:
- question-answering
tags:
- synthetic
- healthcare-ai
- evaluation
- question-answering
- sentence-similarity
- text-classification
- summarization
configs:
- config_name: default
  data_files:
  - split: train
    path: data/train.jsonl
  - split: test
    path: data/test.jsonl
---

# Clinical RAG Safety Gateway Synthetic Dataset

## Summary

This dataset contains 14 training examples and 4
held-out examples for **Clinical assistants need retrieval, source attribution, and explicit abstention before answers reach care teams.**

Every record is synthetic and includes:

- `input`: query, event, or feature description
- `label`: expected class, route, relation, or evidence category
- `context`: synthetic supporting context
- `source`: fictional source identifier
- `variant`: generation pattern
- `synthetic`: always `true`

## Uses

- Reproducible unit and integration tests
- Baseline model training
- Evaluation harness development
- Schema and architecture demonstrations

## Limitations

Synthetic educational data only. The baseline must not provide diagnosis, treatment, or emergency medical advice.

This dataset does not represent real users, patients, customers, production
traffic, or licensed media. It must not be presented as real-world evidence.

## Related Model

[{{HF_NAMESPACE}}/clinical-rag-safety-gateway-20260716-model](https://huggingface.co/{{HF_NAMESPACE}}/clinical-rag-safety-gateway-20260716-model)
