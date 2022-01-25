FROM python:3.9-slim

WORKDIR /usr/src/myapp

COPY requirements.txt ./

RUN pip install --trusted-host pypi.python.org -r requirements.txt && \
    pip install nbconvert==6.1.0 && \
    pip install ipykernel==5.5.5

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

RUN pip install git+https://github.com/pawlodkowski/nbconvert-flowkey.git

CMD jupyter nbconvert analysis.ipynb --to notebook --output 'ex.ipynb' --execute && \
    jupyter nbconvert ex.ipynb --to html --no-input --output 'report.html' --template flowkey
