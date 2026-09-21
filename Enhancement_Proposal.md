# Enhancement Proposal — Machine-Learning Issue Triage

> **Check first:** the capstone says the enhancement must come from the specialization column of the
> project sheet for **your department** (ECE/EEE follow CSE). If your specialization is AI/ML or Data
> Science this proposal fits as-is; otherwise keep this document's structure and swap in your
> specialization's feature, or ask your guide to approve this one by Day 43.

## 1. Problem
The current triage is a hand-written keyword engine. It is deterministic and explainable, but it only knows the
words we typed in, so paraphrases ("the lamp above my gate has died") or new categories are missed.

## 2. Proposed solution
Train a text classifier on labelled complaints and serve it as a small Python service that the Spring Boot
backend calls. The model predicts **category** (and therefore department) and **priority** with a confidence
score. The existing rule engine stays as an automatic fallback, so the live product never depends on the model.

## 3. Technology choices
| Part | Choice | Why |
|---|---|---|
| Features | TF-IDF, 1-2 word n-grams | small data, fast, no GPU |
| Model | Logistic Regression (scikit-learn) | gives calibrated probabilities for a confidence value |
| Serving | Python stdlib HTTP server, `POST /predict` | no extra framework to host |
| Integration | `MlTriageClient` (Java `HttpClient`, 3 s timeout) | isolated; failure → rule engine |
| Data | `ai/dataset/generate_dataset.py` bootstrap set (600 rows) | replace by real reports as they arrive |

## 4. Plan (Weeks 7-8)
1. Day 43-45: proposal, dataset script, baseline metrics. 2. Day 46-49: training + prediction + service, proof of concept.
3. Day 50-53: backend client + fallback, unit tests (Java and pytest). 4. Day 54-56: deploy the service, set `AI_ML_URL`, update architecture diagram.
5. Day 57-60: README v3, demo video, changelog.

## 5. Acceptance criteria
- `POST /api/ai/triage` returns `"source": "ml-model"` when the service is up and `"keyword-rules"` when it is down.
- pytest suite green; Java `MlTriageClientTest` green; CI green.
- Deployed to the **same** live product; architecture diagram updated.

## 6. Honest limits
The bundled dataset is synthetic (template-generated), so its ~100% accuracy only proves the pipeline works. Quote
real accuracy only after training on real, labelled complaints and evaluating on data the model has not seen.
