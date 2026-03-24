FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . /app

# Upgrade pip first (important)
RUN pip install --upgrade pip

# Install requirements
RUN pip install --no-cache-dir -r requirements.txt

# Run app
CMD ["python3", "app.py"]