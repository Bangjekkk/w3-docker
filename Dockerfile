# Menggunakan base image node
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file dari lokal ke container
COPY . .

# Expose port yang akan digunakan
EXPOSE 3000

# Menjalankan build (opsional jika ada script build)
RUN npm run build

# Command untuk menjalankan aplikasi
CMD ["npm", "run", "dev"]
