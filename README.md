# rest-json-server
Проект для погружения в REST

Порядок работы:
1. Перейти на сайт песочницы Docker: https://labs.play-with-docker.com/
2. Создать новый инстанс

Выполнить:
1. docker pull node:16-alpine
2. docker image build -t json-server-img:1.0 .
3. docker container run --name json-server-cnt -d -p 3000:3000 json-server-img:1.0
