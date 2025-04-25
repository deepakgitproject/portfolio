# Use Nginx to serve static files
FROM nginx:alpine

# Clear the default html folder
RUN rm -rf /usr/share/nginx/html/*

# Copy all portfolio files into Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80 inside container
EXPOSE 80
