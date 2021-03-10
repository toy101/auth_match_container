# auth_match_container
## Usage
```
docker run -it --gpus all --name rl-$USER -p xxxx:22 -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) -e LOCAL_NAME=$USER IMAGE_NAME
```
