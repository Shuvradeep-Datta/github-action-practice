FROM python:3.13-slim


WORKDIR /app

RUN apt-get update && apt-get upgrade -y && apt-get clean

COPY  . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD [ "python", "app.py" ]