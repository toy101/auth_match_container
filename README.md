# auth_match_container
## Usage
```
docker run -it --gpus all --name rl-$USER -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) -e LOCAL_NAME=$USER -p xxxx:22 IMAGE_NAME
```
