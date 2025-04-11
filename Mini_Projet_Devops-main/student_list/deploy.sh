#!/bin/bash

# Stop any running containers
docker-compose down

# Pull latest changes
git pull

# Build and start containers
docker-compose up -d --build

# Wait for services to start
sleep 10

# Check if services are running
if curl -s http://localhost:5000/students > /dev/null; then
    echo "API is running successfully"
else
    echo "API is not running"
    exit 1
fi

if curl -s http://localhost:8080 > /dev/null; then
    echo "Website is running successfully"
else
    echo "Website is not running"
    exit 1
fi

echo "Deployment completed successfully!" 