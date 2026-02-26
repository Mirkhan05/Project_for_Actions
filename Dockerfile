FROM python:3.12-slim

# 2️⃣ Отключаем создание .pyc файлов
ENV PYTHONDONTWRITEBYTECODE=1

# 3️⃣ Логи сразу выводятся в терминал
ENV PYTHONUNBUFFERED=1

WORKDIR /DJANGO

COPY requirements.txt .


RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]