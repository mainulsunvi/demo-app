FROM python:3.9.16-alpine3.17

RUN pip install django==3.2

WORKDIR /app

COPY . .

EXPOSE 3000

RUN python manage.py migrate
RUN chmod +x cmd.sh

CMD ["./cmd.sh"]
