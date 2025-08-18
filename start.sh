#!/bin/sh

# Apply Prisma migrations (ensures tables exist)
echo "Running Prisma migrations..."
npx prisma migrate deploy

# Start server with nodemon (auto-restarts on code changes)
echo "Starting server..."
npx nodemon ./src/server.js
