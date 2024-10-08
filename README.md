# DevOPS_interview

Собеседование DevOPS
- [ ] Как удалить файл, который называется -rf?
Варианты ответа:
rm -- -rf
rm ./-rf
find . -name '-rf' -delete

- [ ] Что выполняет этот Dockerfile?
￼![Uploading Снимок экрана 2024-10-07 в 22.47.15.png…]()

Dockerfile создает образ на основе последней версии Ubuntu, обновляет список пакетов и устанавливает утилиту curl. При запуске контейнера будет выполнена команда curl, которая отправит HTTP-запрос на http://example.com.


- [ ] Теперь предположим, что на хосте у нас запущен некоторый сервис на 80-ом порту. Если мы создадим контейнер на этом же хосте, Dockerfile которого описан ниже, то что мы получим при запуске такого контейнера?

￼
Если контейнер не запущен с сервисом, слушающим на localhost, команда вернет ошибку, так как localhost в контейнере ссылается на сам контейнер, а не на хостовую машину.


- [ ] Что делает этот DAG в Airflow?
￼
Этот DAG создает простой рабочий процесс с двумя задачами, start и end, которые выполняются последовательно. Это демонстрационный DAG, который ничего не делает, кроме как создает зависимости.

- [ ] Если заменить DummyOperator на PythonOperator, что нужно будет добавить для успешного выполнения задачи?
Нужно будет указать функцию Python, которую необходимо вызвать, а также, возможно, импортировать необходимые модули.


- [ ] Какова цель этого плейбука Ansible?

￼
Этот плейбук устанавливает версию nginx, указанную в переменной nginx_version, на хостах группы web.

В случае если мы имеем дело со state: absent, то какая роль будет у этой задачи?


- [ ] Можешь сказать, с каким инструментарием мы имеем дело, глядя на этот манифест?
Мы имеем дело с Kubernetes, системой оркестрации контейнеров
￼
Что он делает?
Этот манифест создает Pod с именем my-pod, который содержит один контейнер с образом nginx.

- [ ] Есть такие задачи в Ansible, для чего они?
￼
Как с помощью плейбука избежать постоянных «sudo» в начале Shell скрипта?
become: true


- [ ] Что выполняет эта команда?
￼
Создает и запускает контейнер с именем projectname, который работает в фоновом режиме, автоматически перезапускается, имеет доступ к локальной директории /mnt/project1, пробрасывает порт 7000 и запускает Uvicorn-сервер для приложения на Python с использованием образа ubi9-python311.

- [ ] Что делают эти скрипты?
￼
￼
Первый скрипт запрашивает у пользователя путь к директории, проверяет её существование, создает сжатый архив этой директории и разбивает его на части по 10 МБ, после чего выводит список созданных частей.
Второй предполагает, что в директории PARTS_DIR находятся части архива, начинающиеся с part_. Он объединяет эти части в один файл combined_archive.tar.gz и затем распаковывает этот файл в ту же директорию, а предыдущие части удаляет.
