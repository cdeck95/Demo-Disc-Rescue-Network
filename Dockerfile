# Use the Nginx image from the Docker Hub
FROM nginx:alpine

# Remove the default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy the static content into the container
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
