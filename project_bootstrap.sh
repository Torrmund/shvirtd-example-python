#!/bin/bash

# Экспорт переменной окружения
export MYSQL_PASSWORD='QwErTy1234'

# Путь к директории
DEST_DIR="/opt/shvirtd-example-python"

# Клонирование репозитория
if [ ! -d "$DEST_DIR" ]; then
    echo "Клонирование репозитория..."
    git clone https://github.com/Torrmund/shvirtd-example-python /opt/shvirtd-example-python
else
    echo "Директория уже существует. Обновление..."
    cd $DEST_DIR
    git pull origin main
fi

# Переход в директорию и запуск docker compose
cd $DEST_DIR
echo "Запуск docker compose..."
docker compose up -d