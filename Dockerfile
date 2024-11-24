# Step 1: Use an official Python runtime as a parent image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /App

# Step 3: Install Git to clone the repository
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Step 4: Clone the repository into the container
RUN git clone https://github.com/shreys7/django-todo.git .

# Step 6: Expose port 8000 (Django's default port)
EXPOSE 8000

# Step 7: Run migrations and start the Django app
CMD ["bash", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
