FROM python:3.8-slim-buster

RUN useradd -ms /bin/bash app
USER app
WORKDIR /home/app
COPY --chown=app . /home/app

# append path to env

ENV PATH $PATH:/home/app/.local/bin

RUN pip install -r requirements.txt


# ENV
ENV PORT 8080


STOPSIGNAL SIGTERM
CMD [ "waitress-serve", "--call", "app:create_app" ]