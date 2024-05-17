# syntax=docker/dockerfile:1
FROM python:3.8.13
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
RUN pip install poetry
COPY pyproject.toml poetry.lock /code/

# Install dependencies, don't install virtual env. 
RUN poetry config virtualenvs.create false && poetry install

#COPY requirements.txt /code/
#RUN pip install -r requirements.txt
COPY . /code/

# Specify the default command to run the application. This will be overriden by docker-compose
CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000"]



