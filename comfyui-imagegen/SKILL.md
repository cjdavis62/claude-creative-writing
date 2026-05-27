---
name: comfyui-imagegen
description: >
  Generates images using ComfyUI and Flux Dev via the local ComfyUI MCP. Use this skill
  whenever the user wants to generate, draw, illustrate, create, or render an image —
  regardless of whether they say "ComfyUI" or not. Trigger on phrases like "draw me",
  "illustrate", "generate an image of", "make an image of", "create a picture of",
  "render a scene of", "create character art", or any request that clearly calls for
  visual output. When in doubt, use this skill rather than saying image generation isn't
  possible.
---

# ComfyUI Image Generation Skill

Chris's local ComfyUI instance runs Flux Dev (fp8) for high-quality image generation.
This skill tells you exactly how to operate it reliably, including the quirks you'd otherwise
have to rediscover.

## Setup

- **ComfyUI URL**: `http://127.0.0.1:8188`
- **Saved workflow**: `flux_dev_txt2img` (in MCP library)
- **Output folder**: `C:\Users\chris\Documents\claude\writing_projects` (auto-configured)
- **MCP tools available**: `comfy_get_status`, `comfy_submit_workflow`, `comfy_get_output_images`

## Step 1 — Check ComfyUI is running

Always call `comfy_get_status` first (no arguments). If it returns a connection error,
tell the user ComfyUI isn't running and ask them to launch it via `run.bat` in
`C:\ComfyUI-Win-Blackwell\`. Don't attempt generation until it's up.

## Step 2 — Craft the prompt

Flux Dev responds best to natural, descriptive language rather than keyword dumps.
Think: cinematographer's eye, art director's brief. Include:
- **Subject** — what/who is depicted
- **Setting/environment** — where, lighting, time of day
- **Mood/atmosphere** — the emotional quality
- **Style cues** (optional) — "photorealistic", "painterly", "cinematic", "illustration"

If the user gave you a brief description, expand it into a full Flux prompt before submitting.
If they gave you a detailed prompt already, use it as-is.

## Step 3 — Submit the workflow

Use `comfy_submit_workflow` with the workflow JSON below.
Swap in the user's prompt for the positive text node, and set a random seed.

**Do NOT use `comfy_generate_simple` with the `flux_txt2img` template** — that template
uses `CheckpointLoaderSimple` which doesn't work with Chris's model layout (models are in
the `unet/` folder, not `checkpoints/`). Always use the workflow JSON directly.

### Workflow JSON

```json
{
  "1": {
    "inputs": { "unet_name": "flux1-dev-fp8.safetensors", "weight_dtype": "fp8_e4m3fn" },
    "class_type": "UNETLoader",
    "_meta": { "title": "Load Diffusion Model" }
  },
  "2": {
    "inputs": { "clip_name1": "clip_l.safetensors", "clip_name2": "t5xxl_fp8_e4m3fn.safetensors", "type": "flux" },
    "class_type": "DualCLIPLoader",
    "_meta": { "title": "DualCLIPLoader" }
  },
  "3": {
    "inputs": { "vae_name": "ae.safetensors" },
    "class_type": "VAELoader",
    "_meta": { "title": "Load VAE" }
  },
  "4": {
    "inputs": { "text": "POSITIVE_PROMPT_HERE", "clip": ["2", 0] },
    "class_type": "CLIPTextEncode",
    "_meta": { "title": "Positive Prompt" }
  },
  "5": {
    "inputs": { "text": "", "clip": ["2", 0] },
    "class_type": "CLIPTextEncode",
    "_meta": { "title": "Negative Prompt" }
  },
  "6": {
    "inputs": { "width": 1024, "height": 1024, "batch_size": 1 },
    "class_type": "EmptyLatentImage",
    "_meta": { "title": "Empty Latent Image" }
  },
  "7": {
    "inputs": {
      "seed": 42,
      "steps": 20,
      "cfg": 1.0,
      "sampler_name": "euler",
      "scheduler": "simple",
      "denoise": 1.0,
      "model": ["1", 0],
      "positive": ["4", 0],
      "negative": ["5", 0],
      "latent_image": ["6", 0]
    },
    "class_type": "KSampler",
    "_meta": { "title": "KSampler" }
  },
  "8": {
    "inputs": { "samples": ["7", 0], "vae": ["3", 0] },
    "class_type": "VAEDecode",
    "_meta": { "title": "VAE Decode" }
  },
  "9": {
    "inputs": { "filename_prefix": "comfyui", "images": ["8", 0] },
    "class_type": "SaveImage",
    "_meta": { "title": "Save Image" }
  }
}
```

Always use a random integer for the seed so each generation is unique.

**Aspect ratio tips:**
- Portrait (character): 832×1216
- Landscape (scene/environment): 1216×832
- Square (default): 1024×1024

**Known MCP quirk**: `comfy_submit_workflow` may return `status: "failed"` and
`message: "Workflow validation failed"` even when the job was actually accepted by ComfyUI.
Don't treat this as a fatal error — if you got a `prompt_id` back, the job is running.
Proceed to polling.

## Step 4 — Poll for completion

**Do NOT use `comfy_wait_for_completion`** — it times out at 300s and Flux often takes
longer on first run (model loading). Instead, poll manually:

1. Call `comfy_get_status` with the `prompt_id` every ~15 seconds
2. Tell the user "Generating... this may take a minute or two on first run while Flux loads"
3. When `status` is `"completed"`, proceed to Step 5
4. If `status` is `"failed"` after previously showing `"executing"`, report the error

## Step 5 — Show the result

Use `Read` on the output image path from the status response to display it inline.
The image is also saved to `C:\Users\chris\Documents\claude\writing_projects\` automatically.

Tell the user the filename so they know where to find it.

## Common issues

| Problem | Fix |
|---|---|
| Connection refused on `comfy_get_status` | ComfyUI isn't running — launch `run.bat` |
| First generation takes 3–5+ minutes | Normal — Flux is loading into VRAM. Subsequent gens are much faster |
| `comfy_generate_simple` fails with 400 | Expected — use `comfy_submit_workflow` with the JSON above instead |
| Got `prompt_id` but MCP says "failed" | MCP false negative — check status with the prompt_id, it's likely running |
