FROM python:3.12.4 as build-stage

WORKDIR /usr/app

COPY . .

RUN pip install --upgrade pip && pip install mkdocs && mkdocs build

FROM nginx:1.19-alpine

COPY --from=build-stage /usr/app/site/ /usr/share/nginx/html
