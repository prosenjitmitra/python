FROM python:3.10

WORKDIR /usr/src/app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# installing curl
RUN apt-get install -y curl

COPY . .

EXPOSE 5009

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=5009"]