# Python base image
FROM python:3.12-slim

# Working directory set කරන්න
WORKDIR /app

# Requirements copy + install කරන්න
COPY requirements.txt .
RUN pip install -r requirements.txt

# App files copy කරන්න
COPY . .

# Port 5000 expose කරන්න
EXPOSE 5000

# App run කරන්න
CMD ["python", "app.py"]