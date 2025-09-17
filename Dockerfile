# Dockerfile for Gestion des Cotisations - APEE CES D'EKALI 1
# Simple static site deployment using Nginx

FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy site files (adjust the path if your site is in a subfolder)
COPY index.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
COPY data/ /usr/share/nginx/html/data/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
