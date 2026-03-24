FROM python:3.8-slim-buster

# Install system dependencies (minimal)
RUN apt-get update -y && \
    apt-get install -y curl && \
    apt-get clean

# Set working directory
WORKDIR /app

# Copy files
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install AWS CLI (reliable way)
RUN pip install awscli

# Run app
CMD ["python3", "app.py"]