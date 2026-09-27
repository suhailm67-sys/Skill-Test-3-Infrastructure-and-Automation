# Skill-Test-3-Infrastructure-and-Automation
## Deploy a Multi-Service Node.js E-commerce Application Using Terraform and Docker

### Step 1: Clone the application
`git clone https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation.git`

### Step 2: Create Dockerfiles for each of the 5 services
1. User Service - backend/user-service/Dockerfile - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/backend/user-service/Dockerfile
2. Product Service - backend/product-service/Dockerfile - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/backend/product-service/Dockerfile
3. Cart Service - backend/cart-service/Dockerfile - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/backend/cart-service/Dockerfile
4. Order Service - backend/order-service/Dockerfile - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/backend/order-service/Dockerfile
5. Frontend Dockerfile - frontend/Dockerfile - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/frontend/Dockerfile

### Step 3: Build the Docker images
From the repository root:
1. User service - `docker build -t suhailm67/ecommerce-user:latest .\backend\user-service` - <img width="1442" height="592" alt="image" src="https://github.com/user-attachments/assets/a5c7013d-7273-444c-89fb-6fafaf57d9fc" />
2. Product service - `docker build -t suhailm67/ecommerce-product:latest .\backend\product-service` - <img width="1447" height="602" alt="image" src="https://github.com/user-attachments/assets/8b06cd6a-0511-4aa2-9b13-0ac23bd5658c" />
3. Cart service - `docker build -t suhailm67/ecommerce-cart:latest .\backend\cart-service` - <img width="1446" height="602" alt="image" src="https://github.com/user-attachments/assets/9bebd180-ba43-460b-b740-e291f9ba305d" />
4. Order service - `docker build -t suhailm67/ecommerce-order:latest .\backend\order-service` - <img width="1452" height="622" alt="image" src="https://github.com/user-attachments/assets/0817a28e-7d27-4af1-a7b4-7705dacc2f9e" />
5. Frontend service - `docker build -t suhaim67/ecommerce-frontend:latest .\frontend` and check it `docker images` - <img width="1505" height="252" alt="image" src="https://github.com/user-attachments/assets/a028dc7a-4120-4cf1-9d64-e10d1379b86f" /> <img width="1222" height="260" alt="image" src="https://github.com/user-attachments/assets/5730bb59-cd1a-40c4-aec9-50830a72f449" />

### Step 4: Test locally
1. Create a Docker network - `docker network create ecommerce-network` - <img width="1486" height="52" alt="image" src="https://github.com/user-attachments/assets/e1f1bbf3-7d79-4339-ac5e-5c9f917b5495" />
2. Run MongoDB - <img width="1337" height="256" alt="image" src="https://github.com/user-attachments/assets/49a3cdca-51a2-472e-b060-4a3f28fd2fa9" />
3. User service - <img width="1200" height="202" alt="image" src="https://github.com/user-attachments/assets/1a2b908e-944c-4fa1-809f-8dc187240b46" />
4. Product service - <img width="1192" height="185" alt="image" src="https://github.com/user-attachments/assets/c3d45afe-0b49-4997-aa0b-5144da2c2f28" />
5. Cart service - <img width="1231" height="207" alt="image" src="https://github.com/user-attachments/assets/3e18d973-415b-4e15-9d3f-0eba46ba318a" />
6. Order service - <img width="1207" height="252" alt="image" src="https://github.com/user-attachments/assets/decdb142-0e70-40be-87e0-2ec5ca3a0460" />
7. Test backend services - `curl http://localhost:3001/health`, `curl http://localhost:3002/health`, `curl http://localhost:3003/health`, `curl http://localhost:3004/health` and then `docker ps` - <img width="1902" height="306" alt="image" src="https://github.com/user-attachments/assets/fb3bc7f8-6a35-493a-baef-84bdc87a7b53" />

### Step 5: Push to Docker Hub
1. Login - `docker login` - <img width="1207" height="157" alt="image" src="https://github.com/user-attachments/assets/d9d534d9-61cf-4508-9ccd-878b1d8fd8ee" />
2. `docker push suhailm67/ecommerce-user:latest` - <img width="1527" height="277" alt="image" src="https://github.com/user-attachments/assets/ec8b110f-afca-4e63-96ad-29b20989de47" />
3. `docker push suhailm67/ecommerce-product:latest` - <img width="1546" height="270" alt="image" src="https://github.com/user-attachments/assets/f1d6a73f-f178-4876-8c41-7bdffe3e71f8" />
4. `docker push suhailm67/ecommerce-cart:latest` - <img width="1531" height="280" alt="image" src="https://github.com/user-attachments/assets/6d714a2c-c2ff-461a-b012-7f7750e37423" />
5. `docker push suhailm67/ecommerce-order:latest` - <img width="1527" height="285" alt="image" src="https://github.com/user-attachments/assets/8af3d02f-94ee-47a2-a9a5-626076496b5d" />
6. `docker push suhailm67/ecommerce-frontend:latest` - <img width="1572" height="322" alt="image" src="https://github.com/user-attachments/assets/ebd5216f-2fea-42a1-91c4-ff2dfff18d1d" />

### Step 6: Create Terraform directory and the required terraform files
1. Terraform provider -https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/terraform/provider.tf
2. Variables - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/terraform/variables.tf
3. VPC - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/terraform/vpc.tf
4. Security group - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/terraform/security.tf
5. EC2 instance - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/terraform/ec2.tf
6. Terraform user-data - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/terraform/user_data.sh
7. Terraform outputs - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/terraform/outputs.tf
8. Terraform variables - https://github.com/suhailm67-sys/Skill-Test-3-Infrastructure-and-Automation/blob/main/terraform/terraform.tfvars

### Step 7: Initialize and Deploy Terraform
1. `terraform init` - <img width="1257" height="510" alt="image" src="https://github.com/user-attachments/assets/c395d8b2-1dca-403e-8493-7c547484cb88" />
2. `terraform fmt` and then `terraform validate` - <img width="1340" height="72" alt="image" src="https://github.com/user-attachments/assets/6bd2d722-1435-432b-ae7f-ff0189832c19" />
3. `terraform plan` - <img width="612" height="190" alt="image" src="https://github.com/user-attachments/assets/790c479e-fd4b-4cb0-8617-385c2fb702b9" />
4. `terraform apply` - <img width="1157" height="662" alt="image" src="https://github.com/user-attachments/assets/753247e7-4b7b-463a-8db8-9a8a7f447757" />
5. Veriify if the application is working - `http://44.222.183.222` - <img width="1890" height="955" alt="image" src="https://github.com/user-attachments/assets/7431b662-e173-4561-a4f8-1b63bf920a33" />
<img width="1636" height="722" alt="image" src="https://github.com/user-attachments/assets/6653ced5-d472-4ad6-a2c2-e2cd903cda54" />
<img width="1436" height="942" alt="image" src="https://github.com/user-attachments/assets/860d9869-f5ff-4a1e-b802-b3e2cb9bc890" />

### Step 8: Verify Docker on EC2
1. SSH to the instance and then `docker ps` - <img width="1870" height="346" alt="image" src="https://github.com/user-attachments/assets/ed96a250-aa55-491c-8cd7-9cd8fcd068c3" />
2. Test the services - `curl http://localhost:3001/health`, `curl http://localhost:3002/health`, `curl http://localhost:3003/health`, `curl http://localhost:3004/health` - <img width="967" height="187" alt="image" src="https://github.com/user-attachments/assets/8df56146-e39d-410b-804c-c95bc0d33f14" />

### Screnshots of the application running in AWS
<img width="1630" height="567" alt="image" src="https://github.com/user-attachments/assets/7c69bc45-fa17-4367-85bf-a66b88c44e53" />
<img width="1645" height="622" alt="image" src="https://github.com/user-attachments/assets/d9ff6aea-c9fa-41b0-964c-19c27e73fbfd" />
<img width="1627" height="667" alt="image" src="https://github.com/user-attachments/assets/5d454460-e8d0-41cd-93c5-dd301aa1bbbb" />

### Destroying the Terraform since the application is working
`terraform destroy` - <img width="1091" height="627" alt="image" src="https://github.com/user-attachments/assets/c18aea13-4ce6-48d0-994e-5db2831fb573" />

## Since the application is working successfully on the URL: http://44.222.183.222 , the assignment is completed successfully. Refer the below screenshots of the application front page.
<img width="1890" height="955" alt="image" src="https://github.com/user-attachments/assets/7431b662-e173-4561-a4f8-1b63bf920a33" />
<img width="1636" height="722" alt="image" src="https://github.com/user-attachments/assets/6653ced5-d472-4ad6-a2c2-e2cd903cda54" />
<img width="1436" height="942" alt="image" src="https://github.com/user-attachments/assets/860d9869-f5ff-4a1e-b802-b3e2cb9bc890" />

## Architecture Diagram:
