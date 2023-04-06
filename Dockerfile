FROM python:3
RUN apt-get update && apt-get install -y libpq-dev
RUN pip install Flask psycopg2 configparser
COPY ./web.py /srv/app/
COPY ./conf/web.conf /srv/app/conf/
WORKDIR /srv/app
CMD ["python", "web.py"]
