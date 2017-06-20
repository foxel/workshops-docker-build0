# Workshop #1 "Isolating application"

## step 0

### Что такое image
Docker image это образ наподобие образов виртуальных машин.
Образы можно заполучить из репозиториев или собрать по Dockerfile.

```
docker pull ubuntu:16.04
docker pull alpine:latest
docker images
```

### Что такое Dockerfile

Для создания образов используется Dockerfile - своеобразный сценарий для создания образа.
Данный файл включает в себя различные иснтрукции, извеняющие состояние системы, которое в последствии фиксируется в образе.
Для сборки образа используется команда `docker build`.
 
```
cat step0/Dockerfile
docker build -t workshop-step0 step0
```

### Что такое слои
Образ состоит из слоев. Каждый слой есть результыт выполнения одной команды Dockerfile.

```
docker history ubuntu:16.04
```

