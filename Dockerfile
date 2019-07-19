FROM python:3.4

RUN groupadd -r tkhoma && useradd -r -g tkhoma tkhoma && \
    pip install Flask uwsgi requests redis

WORKDIR /app
EXPOSE 5000
EXPOSE 9090
EXPOSE 9191
USER tkhoma

COPY cmd.sh /

CMD ["/cmd.sh"]
