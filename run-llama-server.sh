#!/bin/bash
# Llama Server Launch Script

echo "Starting llama-server..."
echo

llama-server \
  --host 0.0.0.0 \
  --fit off \
  --warmup \
  --parallel 1 \
  --n-gpu-layers 999 \
  --no-mmap \
  --n-cpu-moe 41 \
  --ctx-size 262144 \
  --cache-type-k q8_0 \
  --cache-type-v q8_0 \
  --flash-attn on \
  --ui-mcp-proxy \
  --tools all \
  --hf-repo unsloth/Qwen3.6-35B-A3B-GGUF:UD-Q4_K_XL

# Extra parameters for testing (included to enable)
#   --api-key Test123

echo
echo "Server stopped."
