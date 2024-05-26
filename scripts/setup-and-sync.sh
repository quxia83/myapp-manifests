
### Sample Script (`setup-and-sync.sh`)

```bash
#!/bin/bash

# Variables for Argo CD operations
REPO_URL="https://github.com/quxia/myapp-manifests.git"
APP_NAME="myapp"
PATH_TO_DEPLOYMENT="deployment"
DEST_SERVER="https://kubernetes.default.svc"
DEST_NAMESPACE="default"

# Ensure the repository is added only if it's not already present
if ! argocd repo list | grep -q "$REPO_URL"; then
  argocd repo add "$REPO_URL"
fi

# Create or update the application
if argocd app get "$APP_NAME" >/dev/null 2>&1; then
  argocd app sync "$APP_NAME"
else
  argocd app create "$APP_NAME" \
    --repo "$REPO_URL" \
    --path "$PATH_TO_DEPLOYMENT" \
    --dest-server "$DEST_SERVER" \
    --dest-namespace "$DEST_NAMESPACE"
fi
