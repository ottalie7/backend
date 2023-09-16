FROM python:3.9-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy requirements
COPY requirements.txt .

# Install app dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Bundle app source
COPY . .

# Expose port and start uvicorn
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]