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
5. Frontend service - `docker build -t suhaim67/ecommerce-frontend:latest .\frontend` - <img width="1505" height="252" alt="image" src="https://github.com/user-attachments/assets/a028dc7a-4120-4cf1-9d64-e10d1379b86f" /> <img width="1222" height="260" alt="image" src="https://github.com/user-attachments/assets/5730bb59-cd1a-40c4-aec9-50830a72f449" />



