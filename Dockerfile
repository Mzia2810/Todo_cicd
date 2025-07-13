# Step 1: Base image
FROM node:18

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy dependency files
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy rest of the code
COPY . .

# Step 6: Expose app port
EXPOSE 8000

# Step 7: Run app
CMD ["node", "app.js"]

