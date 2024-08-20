# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the build files from React app to the Nginx html directory
COPY build /usr/share/nginx/html

# Expose the port the app runs on
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]