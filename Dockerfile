FROM python:3.10-slim

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir -r /app/requirements.txt

COPY . /app

EXPOSE 8000


CMD ["uvicorn", "backend.main:app", "--host", "0.0.0.0", "--port", "8000"]