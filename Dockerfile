# Stage 1: Builder + Tests
FROM node:18-alpine AS builder

WORKDIR /usr/src/app

# Install all deps (including devDependencies)
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Run tests
RUN npm test


# Stage 2: Production
FROM node:18-alpine
WORKDIR /usr/src/app

# Install only production dependencies
COPY package*.json ./
RUN npm ci --only=production

# Copy source code + static files
COPY src ./src
COPY public ./public       
COPY server.js ./

# Expose port
EXPOSE 3000

# Run as non-root user
RUN addgroup app && adduser -S -G app app
USER app

CMD ["node", "server.js"]
