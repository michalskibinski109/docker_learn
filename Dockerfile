FROM python:alpine3.10

WORKDIR /code

COPY ./requirements.txt ./
RUN pip install  --no-cache-dir -r requirements.txt # docker has its own cache

COPY ./ ./src


CMD ["python","-m", "pytest", "-v", "-s", "."]

# to build run
# docker build -t pytest-docker .
# to run give a tag to the image
# docker tag pytest-docker:latest pytest-docker:1.0
# to push run:
# docker push pytest-docker:1.0
# denied: requested access to the resource is denied
# docker login --username=yourhubusername --password=yourpassword