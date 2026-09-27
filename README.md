# Skill-Test-3-Infrastructure-and-Automation
Deploy a Multi-Service Node.js E-commerce Application Using Terraform and Docker

## Step 1: Clone the application
`git clone https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation.git`

## Step 2: Create Dockerfiles for each of the 5 services
1. User Service - backend/user-service/Dockerfile
2. Product Service - backend/product-service/Dockerfile
3. Cart Service - backend/cart-service/Dockerfile
4. Cart Service - backend/order-service/Dockerfile
5. Frontend Dockerfile - frontend/Dockerfile

## Step 3: Build the Docker images
From the repository root:
1. User service - `docker build -t suhailm67/ecommerce-user:latest .\backend\user-service` - <img width="1442" height="592" alt="image" src="https://github.com/user-attachments/assets/a5c7013d-7273-444c-89fb-6fafaf57d9fc" />
2. Product service - `docker build -t suhailm67/ecommerce-product:latest .\backend\product-service` - <img width="1447" height="602" alt="image" src="https://github.com/user-attachments/assets/8b06cd6a-0511-4aa2-9b13-0ac23bd5658c" />
3. Cart service - `docker build -t suhailm67/ecommerce-cart:latest .\backend\cart-service` - <img width="1446" height="602" alt="image" src="https://github.com/user-attachments/assets/9bebd180-ba43-460b-b740-e291f9ba305d" />
4. Order service - `docker build -t suhailm67/ecommerce-order:latest .\backend\order-service` - <img width="1452" height="622" alt="image" src="https://github.com/user-attachments/assets/0817a28e-7d27-4af1-a7b4-7705dacc2f9e" />
5. Frontend service - `docker build -t suhaim67/ecommerce-frontend:latest .\frontend` and check it `docker images` - <img width="1505" height="252" alt="image" src="https://github.com/user-attachments/assets/a028dc7a-4120-4cf1-9d64-e10d1379b86f" /> <img width="1222" height="260" alt="image" src="https://github.com/user-attachments/assets/5730bb59-cd1a-40c4-aec9-50830a72f449" />

## Step 4: Test locally
1. Create a Docker network - `docker network create ecommerce-network` - <img width="1486" height="52" alt="image" src="https://github.com/user-attachments/assets/e1f1bbf3-7d79-4339-ac5e-5c9f917b5495" />
2. Run MongoDB - <img width="1337" height="256" alt="image" src="https://github.com/user-attachments/assets/49a3cdca-51a2-472e-b060-4a3f28fd2fa9" />
3. User service - <img width="1200" height="202" alt="image" src="https://github.com/user-attachments/assets/1a2b908e-944c-4fa1-809f-8dc187240b46" />
4. Product service - <img width="1192" height="185" alt="image" src="https://github.com/user-attachments/assets/c3d45afe-0b49-4997-aa0b-5144da2c2f28" />
5. Cart service - <img width="1231" height="207" alt="image" src="https://github.com/user-attachments/assets/3e18d973-415b-4e15-9d3f-0eba46ba318a" />
6. Order service - <img width="1207" height="252" alt="image" src="https://github.com/user-attachments/assets/decdb142-0e70-40be-87e0-2ec5ca3a0460" />
7. Test backend services - `curl http://localhost:3001/health`, `curl http://localhost:3002/health`, `curl http://localhost:3003/health`, `curl http://localhost:3004/health` and then `docker ps` - <img width="1902" height="306" alt="image" src="https://github.com/user-attachments/assets/fb3bc7f8-6a35-493a-baef-84bdc87a7b53" />

## Step 5: Push to Docker Hub
1. Login - `docker login`
