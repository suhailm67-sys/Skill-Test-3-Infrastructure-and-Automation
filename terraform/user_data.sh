#!/bin/bash

set -e

apt-get update -y

apt-get install -y docker.io

systemctl enable docker
systemctl start docker

usermod -aG docker ubuntu

# Wait for Docker
sleep 10

# Pull images
docker pull ${dockerhub_username}/ecommerce-user:latest
docker pull ${dockerhub_username}/ecommerce-product:latest
docker pull ${dockerhub_username}/ecommerce-cart:latest
docker pull ${dockerhub_username}/ecommerce-order:latest
docker pull ${dockerhub_username}/ecommerce-frontend:latest

# Create application network
docker network create ecommerce-network || true

# MongoDB
docker run -d \
  --name mongodb \
  --network ecommerce-network \
  --restart unless-stopped \
  mongo:7

# User service
docker run -d \
  --name user-service \
  --network ecommerce-network \
  --restart unless-stopped \
  -p 3001:3001 \
  -e PORT=3001 \
  -e MONGODB_URI=mongodb://mongodb:27017/ecommerce_users \
  -e JWT_SECRET=production-secret \
  ${dockerhub_username}/ecommerce-user:latest

# Product service
docker run -d \
  --name product-service \
  --network ecommerce-network \
  --restart unless-stopped \
  -p 3002:3002 \
  -e PORT=3002 \
  -e MONGODB_URI=mongodb://mongodb:27017/ecommerce_products \
  ${dockerhub_username}/ecommerce-product:latest

# Cart service
docker run -d \
  --name cart-service \
  --network ecommerce-network \
  --restart unless-stopped \
  -p 3003:3003 \
  -e PORT=3003 \
  -e MONGODB_URI=mongodb://mongodb:27017/ecommerce_carts \
  -e PRODUCT_SERVICE_URL=http://product-service:3002 \
  ${dockerhub_username}/ecommerce-cart:latest

# Order service
docker run -d \
  --name order-service \
  --network ecommerce-network \
  --restart unless-stopped \
  -p 3004:3004 \
  -e PORT=3004 \
  -e MONGODB_URI=mongodb://mongodb:27017/ecommerce_orders \
  -e CART_SERVICE_URL=http://cart-service:3003 \
  -e PRODUCT_SERVICE_URL=http://product-service:3002 \
  -e USER_SERVICE_URL=http://user-service:3001 \
  ${dockerhub_username}/ecommerce-order:latest

# Frontend
docker run -d \
  --name frontend \
  --network ecommerce-network \
  --restart unless-stopped \
  -p 80:80 \
  ${dockerhub_username}/ecommerce-frontend:latest

echo "E-Commerce application deployment complete"