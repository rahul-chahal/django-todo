# docker-todo  
A simple Todo app containerized with Docker and deployed using Kubernetes.  

![Todo App](https://via.placeholder.com/800x400.png?text=Todo+App)  

---

## Setup  

To get this repository, run the following command in your git-enabled terminal:  
```bash
$ git clone https://github.com/rahul-chahal/docker-todo.git
```

Ensure you have Docker installed to containerize the app. You can download Docker from [here](https://docs.docker.com/get-docker/). Additionally, Kubernetes must be set up on your system for deployment.  

---

### Steps for Deployment  

#### 1. Build the Docker Image  
Navigate to the project directory and build the Docker image:  
```bash
$ docker build -t dockerhub/todo-image:v1 .
```

#### 2. Verify Local Docker Images  
Check if the image has been created locally:  
```bash
$ docker images
```

#### 3. Push Image to Docker Hub  
Tag the Docker image for your repository:  
```bash
$ docker tag dockerhub/todo-image:v1 151897/todo-image:v1
```  

Push the image to your Docker Hub repository:  
```bash
$ docker push 151897/todo-image:v1
```

#### 4. Create a Kubernetes Pod  
1. Create a file named `pod.yaml` with the required pod configuration.  
2. Apply the configuration to create the pod:  
   ```bash
   $ kubectl apply -f pod.yaml
   ```

#### 5. Verify Pod Status  
Check if the pod is running:  
```bash
$ kubectl get pods -o wide
```

#### 6. Deploy the Pod  
1. Create a file named `deploy.yaml` for deployment configuration.  
2. Apply the deployment:  
   ```bash
   $ kubectl apply -f deploy.yaml
   ```

#### 7. Forward Kubernetes Pod Port to Local Machine  
Expose the pod to your local machine on port 8000:  
```bash
$ kubectl port-forward pod/<pod-name> 8000:8000
```

Cheers and Happy Coding :)

