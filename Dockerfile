# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install any required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8088 available to the world outside this container
EXPOSE 8088

# Define environment variable
ENV FLASK_APP=app.py

# Run the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=8088"]