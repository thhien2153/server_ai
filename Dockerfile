# Dockerfile
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Copy rest of the code
COPY . .

# Default command to run
CMD ["python", "app.py"]  # Nếu bạn có file main là app.py hoặc sửa lại tên file tương ứng
