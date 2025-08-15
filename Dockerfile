# Use a lightweight Python base image
FROM python:3.10-slim

WORKDIR /app

# Copy everything (including requirements)
COPY . .

# Install dependencies (including your app)
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 3000
ENV PYTHONUNBUFFERED=1

CMD ["python", "app.py"]
