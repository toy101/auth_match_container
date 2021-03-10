# Auth Match Container
権限一致+(ssh接続可能な)コンテナ

## TODO
- [x] `sshd`の自動起動
- [ ] `/etc/passwd`のログインシェルの変更
- [ ] 鍵のマウント

## Usage
```
docker run -it --gpus all --name rl-$USER -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) -e LOCAL_NAME=$USER -p xxxx:22 IMAGE_NAME
```
#### option
- `-v DIRNAME:/workspace`
