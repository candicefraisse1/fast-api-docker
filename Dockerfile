FROM alpine:3.16

RUN python --version
RUN mkdir /cloning_folder
RUN git clone https://github.com/candicefraisse1/fast-api-docker.git
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./main.py" ]
