# Use official Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install Flask and Werkzeug with compatible versions
RUN pip install flask==2.0.1 werkzeug==2.0.1

# Copy the rest of the app files
COPY . /app/

# Expose port 5000 (or 80, if you prefer)
EXPOSE 5000

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Run the Flask app
CMD ["flask", "run"]
