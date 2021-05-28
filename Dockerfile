FROM quay.io/minnie0531/python:3.9-alpine
COPY . /src
WORKDIR /src

RUN pip install pipenv
RUN pipenv install --deploy --system

CMD ["python", "app/main.py"]
