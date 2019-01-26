# Initialize from python-alpine. Much smaller, no unnecessary packages.
FROM python:3.7.2-alpine3.8

# Switch workdir to where we want to have the app.
WORKDIR /usr/src/app

COPY requirements.txt ./

# Install dependencies of the app (Django ...)
# Some build dependencies are used and removed after the build.
# Runtime dependencies stay.
RUN \
    apk add --no-cache postgresql-libs && \
    apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
    pip install --no-cache-dir -r requirements.txt && \
    apk --purge del .build-deps

# Copy all the data from the current dictionary (.dockerignore applies)
COPY . .
