    # Start your image with an Ubuntu base image
    FROM ubuntu:latest

    # Set environment variables to avoid interactive prompts during package installation
    # ENV DEBIAN_FRONTEND=noninteractive

    # Install dependencies for Python and pip, then Python itself
    RUN apt-get update && \
        apt-get install -y python3 python3-pip python3-dev python3-venv && \
        apt-get clean

    # Create a virtual environment
    RUN python3 -m venv /venv

    # Set the PATH to the virtual environment so we use its Python and pip by default
    ENV PATH="/venv/bin:$PATH"

    # Install Django and other dependencies (if you have a requirements.txt file, uncomment the next line)
    RUN pip install Django==5.1.3

    # Set working directory to /app
    WORKDIR /app

    # Copy the local project files into the container
    COPY . /app

    # Install any additional dependencies (if you have a requirements.txt file, uncomment the next line)
    # RUN pip install -r requirements.txt

    # Run Django migrations
    RUN python manage.py makemigrations
    RUN python manage.py migrate

    # Expose port 8000 for the Django development server
    EXPOSE 8000

    # Run the Django development server
    CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
