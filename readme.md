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

To use test runner in vscode:

Need to change owner of .docker to user. (This could be just a colima thing)
    Example: sudo chown -R binh.nguyenmd:staff /Users/binh.nguyenmd/.docker

Need to install python vscode extension when attachd to container

== Maybe not needed
Need to install pytest and pytest-django with poetry (do this within the container)
    Make sure to do so in container 

==

Need to setup pytest.ini file
    The file should explicitly state the following
    - The DJANGO_SETTINGS_MODULE
    - python_files
    - testpaths

Need to setup .vscode/settings.json 
    - Only has to tell vscode that pytest is enabled. All other settings can be in pytest.ini
    
Need vscode extension for pytest (pytest runner, python test explorer)

pytest must be ran within container

Issues:
- When connecting vscode to container, "./manage test" cannot be ran. Once vscode is disconnected from container, it will work again on other CLI. 
    Fix: Switched from Colima to Docker Desktop and it is working now. 