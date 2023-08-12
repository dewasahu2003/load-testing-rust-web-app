#for load testing the web-app
import time
from locust import HttpUser, task, between 

class LoadTest(HttpUser):
    wait_time=between(1,5)
    @task
    def hello_world(self):
        self.client.get("/add/5/2")
        self.client.get("/sub/5/2")