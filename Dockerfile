FROM python:3.8

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
#RUN pip install Flask==0.10.1 uWSGI==2.0.8
RUN pip install Flask uWSGI requests redis

WORKDIR /app

COPY app /app
COPY cmd.sh / 

EXPOSE 9090 9191

USER uwsgi

CMD ["/cmd.sh"]
