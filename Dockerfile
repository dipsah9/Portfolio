FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["gunicorn", "-w", "3", "-b", "0.0.0.0:8080", "app:app"]

