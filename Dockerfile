# Build stage
FROM node:20-alpine AS build-stage

WORKDIR /app

# Install pnpm globally
RUN corepack enable && corepack prepare pnpm@9.11.0 --activate

# Copy package files first for better caching
COPY package.json pnpm-lock.yaml ./

# Install dependencies with frozen lockfile
RUN pnpm install --frozen-lockfile

# Copy source code
COPY . .

# Build the application
RUN pnpm build

# Production stage
FROM nginx:stable-alpine AS production-stage

COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
