# django-todo
A simple todo app built with django

![todo App](https://raw.githubusercontent.com/shreys7/django-todo/develop/staticfiles/todoApp.png)
### Setup
To get this repository, run the following command inside your git enabled terminal
```bash
$ git clone https://github.com/shreys7/django-todo.git
```
You will need django to be installed in you computer to run this app. Head over to https://www.djangoproject.com/download/ for the download guide

Once you have downloaded django, go to the cloned repo directory and run the following command

```bash
$ python manage.py makemigrations
```

This will create all the migrations file (database migrations) required to run this App.

Now, to apply this migrations run the following command
```bash
$ python manage.py migrate
```

One last step and then our todo App will be live. We need to create an admin user to run this App. On the terminal, type the following command and provide username, password and email for the admin user
```bash
$ python manage.py createsuperuser
```

That was pretty simple, right? Now let's make the App live. We just need to start the server now and then we can start using our simple todo App. Start the server by following command

```bash
$ python manage.py runserver
```

Once the server is hosted, head over to http://127.0.0.1:8000/todos for the App.


# DevOps Automation for Django Application

This project automates the deployment of a Django application using Docker, Jenkins, and AWS EC2.

## Project Structure

- **Dockerfile**: Docker containerization for the Django app
- **docker-compose.yml**: Multi-container setup for Django and PostgreSQL
- **Jenkinsfile**: Jenkins pipeline for CI/CD
- **ec2-setup.sh**: Script to configure EC2 instance for Docker
- **deploy.sh**: Deployment script to run Docker containers

## Getting Started

### Prerequisites:
- Docker
- Docker Compose
- Jenkins
- AWS EC2 instance

### Running Locally:
1. Clone the repository
2. Run `docker-compose up --build` to start the app

### Deployment on EC2:
1. Run `ec2-setup.sh` on your EC2 instance
2. Configure Jenkins to use the Jenkinsfile for continuous integration
3. Set up the `deploy.sh` script for deployment

Cheers and Happy Coding :)



