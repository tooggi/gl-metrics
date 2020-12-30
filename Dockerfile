FROM python:3.8

RUN mkdir -p /usr/src/metrics/
WORKDIR /usr/src/metrics/

COPY . /usr/src/metrics/
RUN pip install --no-cache-dir -r requirements.txt

CMD ["./metrics", "-h"]
