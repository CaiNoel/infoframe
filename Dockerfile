FROM python:latest

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_APP=app.py
ENV FLASK_RUN_PORT=80
ENV FLASK_RUN_HOST=0.0.0.0

CMD ["flask", "run"]
