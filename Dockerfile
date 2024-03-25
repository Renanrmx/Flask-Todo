FROM python:3-alpine

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

#CMD ["flask", "run", "--host=127.0.0.1"]
#CMD flask run -h 127.0.0.1 -p 5000
CMD ["flask", "run", "--host", "0.0.0.0"]