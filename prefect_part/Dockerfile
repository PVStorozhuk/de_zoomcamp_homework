FROM python:3.9.1

RUN apt-get install wget
COPY req.txt req.txt
RUN pip install  -r req.txt

WORKDIR /app
COPY ingest_pref.py ingest_pref.py 

ENTRYPOINT [ "python", "ingest_pref.py" ]