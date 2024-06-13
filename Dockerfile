FROM alpine:3.16

RUN apk add python3
RUN python3 --version
RUN git clone https://github.com/candicefraisse1/fast-api-docker.git
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./main.py" ]

FROM alpine:3.14
WORKDIR .
RUN apk add --update python3 py3-pip git
RUN echo python3 --version
RUN git config --global user.name candicefraisse1
RUN git config --global user.email candice.fraisse2@gmail.com
RUN git clone https://github.com/candicefraisse1/fast-api-docker.git
RUN pip install fastapi uvicorn fastapi-cli pydantic  
COPY . .
CMD [ "python", "./main.py" ]