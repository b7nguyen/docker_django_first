### Anthony was *not* here first
Cole was here

## Installs:
```sh
brew install docker docker-compose
```

```sh
brew install colima
```

## RUN:
```sh
colima start
```

```sh
docker-compose up
```


To use test runner in vscode

Need to change owner of .docker to user 
    sudo chown -R binh.nguyenmd:staff /Users/binh.nguyenmd/.docker
Need to install pytest and pytest-django with poetry (do this withing the container)
    Make sure to do so in container 
Need to setup pytest.ini file
Need vscode extension for pytest (pytest runner, python test explorer)

pytest must be ran within container 

issues:
- When connecting vscode to container, "./manage test" cannot be ran. Once vscode is disconnected from container, it will work again on other CLI. 
