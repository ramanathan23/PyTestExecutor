FROM python:3-alpine
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONBUFFERED=1
COPY requirements.txt .
COPY make.sh .
RUN python -m pip install -r requirements.txt
RUN apk update && apk add bash
RUN apk update && apk add git
WORKDIR /app
CMD ["/bin/bash", "/make.sh"]