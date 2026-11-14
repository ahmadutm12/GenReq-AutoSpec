#!/usr/bin/env bash
# Re-runs the full analysis from the released data and recorded LLM outputs.
# LLM outputs (llm_outputs/) are NOT regenerated: they are the recorded model responses.
set -euo pipefail
cd "$(dirname "$0")"
for s in scripts/0*.py; do
  echo "== $s"
  python "$s"
done
echo "Done. Results in results/, figures in figures/."
