# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Create a directory for your web app and set it as the working directory
WORKDIR /app

# Install Flask and Werkzeug
RUN pip install Flask Werkzeug

# Create a directory for static files
RUN mkdir /app/static

# Copy your script and HTML page into the container
COPY upload.py /app/
COPY upload.html /app/static/

# Expose port 80 for the web server
EXPOSE 80

# Start the Flask web server
CMD ["python", "upload.py"]

