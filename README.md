# disco-cat

Static "DO NOT PRESS" site with CI/CD to Docker Swarm.

## CI/CD flow

On push to `master`:
1. GitHub Actions builds Docker image from `Dockerfile`
2. Pushes image to GHCR: `ghcr.io/annaabbalt-boop/disco-cat:master`
3. SSH to Swarm manager
4. Runs `docker stack deploy` for stack `disco-cat`

Workflow file: `.github/workflows/deploy.yml`

## Required GitHub Secrets

Set these in repo settings → **Secrets and variables** → **Actions**:

- `SWARM_HOST` (example: `disco.cat.anna.bops.name`)
- `SWARM_USER` (example: `root`)
- `SWARM_SSH_KEY` (private key content for swarm access)
- `SWARM_SSH_PORT` (optional, defaults to `22`)

## Notes

- Workflow is triggered by branch `master`.
- If your default branch is `main`, either rename to `master` or change workflow trigger.
- Swarm nodes must be able to pull from `ghcr.io`.
- Traefik network `traefik-public` must exist.
