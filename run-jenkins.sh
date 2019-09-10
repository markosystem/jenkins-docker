sudo docker run -u root --rm \
-d \
--memory=640m \
--memory-swap=1.5g \
-p 8888:8080 \
-p 50000:50000 \
-v jenkins-data:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(pwd)/apps:/home/apps \
--name jenkins \
jenkinsci/blueocean
