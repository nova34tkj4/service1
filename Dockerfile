#server
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy file requirements dan install dependency
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy seluruh file ke container
COPY . .

# Jalankan aplikasi
CMD ["python", "app.py"]
