# This Dockerfile defines a multi-stage build process to create a Docker image for the frontend.

# Stage 1: Build the React App
#
# This stage uses the node:18-alpine image as a base to build the React application.
# It installs dependencies and generates the production build.

FROM node:18-alpine AS builder

# Set the working directory inside the container to /app.
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory.
# These files contain the project's dependencies.
# This also ensures that this layer will be cached unless the dependecies change, enabling faster build.
COPY package.json package-lock.json ./

# Install the project dependencies using npm install.
# --frozen-lockfile ensures that the exact versions specified in package-lock.json are installed.
RUN npm install --frozen-lockfile

# Copy the entire application source code to the working directory.
COPY . .

# Run the build script defined in package.json (usually "npm run build").
# This generates the production build of the React application in the /app/build directory.
RUN npm run build


# Stage 2: Serve the App with Nginx
#
# This stage uses the nginx:alpine image as a base to serve the built React application.
# It copies the Nginx configuration and the built application files into the Nginx server.

FROM nginx:alpine AS prod

# Copy the custom Nginx configuration file (nginx.conf) to the Nginx configuration directory.
# This file replaces the default conf and defines how Nginx will serve the application.
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the built React application files from the builder stage to the Nginx HTML directory.
# This makes the application files accessible to Nginx.
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80, which is the default HTTP port that Nginx listens on.
# This allows external access to the application.
EXPOSE 80

# Start the Nginx server in the foreground.
# "daemon off;" ensures that Nginx runs in the foreground, which is required for Docker containers.
CMD ["nginx", "-g", "daemon off;"]
