FROM python:3-alpine

# install pip packages
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# copy application files
COPY app.py /app

WORKDIR /app

EXPOSE 8080

CMD ["python", "app.py"]
