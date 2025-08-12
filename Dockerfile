# ===== Stage 1: Clone the repository =====
FROM alpine:latest AS builder
RUN apk add --no-cache git
WORKDIR /app
RUN git clone https://github.com/segaboy/resume.git .

# ===== Stage 2: Serve with Nginx =====
FROM nginx:alpine
COPY --from=builder /app /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]