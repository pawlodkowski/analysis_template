FROM python:3.9-slim

WORKDIR /usr/src/myapp

COPY requirements.txt ./

RUN pip install --trusted-host pypi.python.org -r requirements.txt && \
    pip install nbconvert==6.5.0 && \
    pip install ipykernel==5.5.5 && \
    pip install ipython_genutils==0.2.0 && \
    pip install jinja2==3.0.3

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

RUN pip install git+https://github.com/pawlodkowski/nbconvert-flowkey.git

CMD python run_analysis.py