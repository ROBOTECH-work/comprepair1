# Use Python lightweight image
FROM python:3.9-alpine

# Set working directory to root (since files are directly in root)
WORKDIR /

# Copy all files (index.html, etc.) to the root directory
COPY . /

# Expose port 8003
EXPOSE 8003

# Run Python HTTP server on port 8003
CMD ["python", "-m", "http.server", "8003"]
