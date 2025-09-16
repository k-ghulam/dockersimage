FROM python:3.9-slim

WORKDIR /app

# Install dependencies first (faster Docker builds using cache)
COPY requirements.txt /app/

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . /app

# Expose Flask port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]

