# Initialize from python-alpine. Much smaller, no unnecessary packages.
FROM python:3.7.2-alpine3.8

# Switch workdir to where we want to have the app.
WORKDIR /usr/src/app

# Copy all the data from the current dictionary (.dockerignore applies)
COPY . .

# Install dependencies of the app (Django ...)
Run pip install --no-cache-dir -r requirements.txt
