FROM node:18-alpine
WORKDIR /app
# Copy the package.json we just created
COPY package.json ./
# Install the 'serve' utility
RUN npm install
# Copy the existing dist folder from your root to the container
COPY dist ./dist
# Expose port 3000
EXPOSE 3000
# Command to serve the application
CMD ["npm", "start"]
