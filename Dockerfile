FROM python:3.14-alpine


ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

RUN chown -R appuser:appgroup /app
USER appuser
EXPOSE 6767

CMD ["gunicorn", "run:app", "--bind", "0.0.0.0:6767"]
