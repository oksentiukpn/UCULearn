FROM python:3.14-alpine

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 6767
CMD ["gunicorn", "run:app", "--bind", "0.0.0.0:6767"]
