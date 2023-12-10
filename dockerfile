FROM python:3.12.0

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY static .
COPY templates .
COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]
