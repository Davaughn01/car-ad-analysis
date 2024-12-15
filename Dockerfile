# Use the official Python image from DockerHub
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the local project files into the container
COPY . /app

# Install the required Python packages
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the Streamlit default port (8501)
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port", "8501", "--server.address", "0.0.0.0"]
