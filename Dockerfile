FROM python:3.9.16-alpine3.17

RUN pip install django==3.2

WORKDIR /app

COPY . .

RUN python manage.py migrate
RUN chmod +x cmd.sh

EXPOSE 3000

CMD ["python","manage.py","runserver","0.0.0.0:3000"]
