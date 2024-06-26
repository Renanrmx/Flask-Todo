FROM python:3-alpine

ENV FLASK_APP=app
ENV FLASK_ENV=development

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0"]