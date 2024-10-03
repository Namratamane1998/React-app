FROM node:latest
# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build

# Install a simple web server to serve the built files
RUN npm install -g serve

# Expose the port where the app will run
EXPOSE 5173

# Serve the build folder using "serve"
CMD ["serve", "-s", "build", "-l", "5173"]