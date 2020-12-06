FROM python:3.8-alpine

WORKDIR /code

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY sillyredirector.py .

EXPOSE 9000

CMD [ "python", "./sillyhttpsredirector.py" ] 