# Project Zomboid on Kubernetes

```bash
# YOLO
kustomizeb build | k apply -f -
```
## Image

You either have to build the Dockefile in this repository yourself and push it to a registry
of your choice, or you have to modify the stateful set to work with existing Project Zomboid images.

## Config

I've tired to add some annotations to template_SandboxVars.lua, but it's incomplete.
