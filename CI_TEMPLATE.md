# Reusable Swarm CI/CD Template

Use this for new repos.

## 1) Copy workflow
Copy `.github/workflows/swarm-deploy-template.yml` to new repo as `.github/workflows/deploy.yml`.

Update:
- `IMAGE_NAME` (example: `ghcr.io/annaabbalt-boop/my-app`)
- `DOMAIN` (example: `my-app.anna.bops.name`)

## 2) Required repo secrets
Set in GitHub Actions secrets:
- `SWARM_HOST`
- `SWARM_USER`
- `SWARM_SSH_PORT`
- `SWARM_SSH_KEY`

## 3) Branch trigger
Pipeline runs on push to `master`.

## 4) Result
On each push to `master`:
- Build and push image to GHCR
- Deploy/update Docker Swarm stack via SSH
