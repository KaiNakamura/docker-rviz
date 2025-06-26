# Docker RViz

Minimum example for running RViz within a Docker container.

Tested on Ubuntu 24.04.2.

## Building

Run this script to set up X11

```bash
bash setup-x11.sh
```

Then build the contianer

```bash
docker compose up -d
```

Or build without cache

```bash
docker compose up -d --build --force-recreate
```

## Running

Then run the container

```bash
docker compose exec docker-rviz bash
```

Now run `roscore` from within the container.

To run `rviz`, you'll need to open another terminal which can be done from within the container with `tmux`. Or by spinning up another container on a new terminal from your host machine.
