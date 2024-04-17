# Use a lightweight base image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the local contents to the container directory
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]
