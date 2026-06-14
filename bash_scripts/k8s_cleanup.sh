#!/bin/bash

# Remove stopped containers to free resources
echo "Cleaning exited containers..."
docker container prune -f

# Remove unused Docker images to reclain disk space
echo "Cleaning unused images..."
docker image prune -a -f

# Notify the user when cleanup is complete
echo "Docker cleanup finished."
