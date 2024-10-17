# Use the official NGINX base image
FROM nginx:latest

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website content to nginx's default directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

