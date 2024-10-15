FROM python:3.10
# Установка базового образа
WORKDIR /bot
# Установка рабочей директории
COPY . .
# Копирование файлов приложения в контейнер
RUN pip install --no-cache-dir -r requirements.txt
# Установка зависимостей
CMD ["python", "./bot.py"]
# Команда для запуска бота