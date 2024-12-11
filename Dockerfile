
FROM python:3.13-alpine3.21

RUN pip install --no-cache-dir fastapi minio "fastapi[standard]" pika python-dotenv uvicorn pandas 
RUN pip install pydantic-settings
RUN pip install openpyxl
COPY . .

EXPOSE 8000

CMD ["fastapi", "dev", "main.py","--host","0.0.0.0"]

