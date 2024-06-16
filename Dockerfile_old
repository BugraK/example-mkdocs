FROM python:3.12.4

WORKDIR /usr/app

COPY . .

EXPOSE 8080

RUN pip install --upgrade pip
RUN pip install mkdocs
RUN mkdocs build

CMD ["mkdocs", "serve"]

