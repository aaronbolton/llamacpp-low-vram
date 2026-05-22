# llamacpp-low-vram

## Quick Start

1. Download the release for your OS and CUDA version from https://github.com/ggml-org/llama.cpp/releases.
   - **Windows**: Don't forget to copy the CUDA DLL files into the extracted `llama.cpp` folder.
2. Copy the appropriate `.bat` (Windows) or `.sh` (Linux) script into the `llama.cpp` folder.
3. Run the script once, editing the GPU/memory options to match your VRAM requirements.

## VRAM Configuration Guide

| VRAM  | Recommended Flags                        |
|-------|------------------------------------------|
| 10 GB | `--n-cpu-moe 35 --ctx-size 262144`       |
|  8 GB | `--n-cpu-moe 41 --ctx-size 262144`       |
|  6 GB | `--n-cpu-moe 41 --ctx-size 131072`       |

## Flag Explanation

- **`--n-cpu-moe`** — Number of Mixture-of-Experts (MoE) layers to offload to the CPU. Increasing this value moves more model layers off the GPU, reducing VRAM usage but at the cost of inference speed.

- **`--ctx-size`** — Context window size in tokens. This determines the size of the KV cache stored in VRAM. A larger context improves the model's ability to reference more previous text but requires significantly more VRAM.

