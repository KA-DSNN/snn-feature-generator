FROM tensorflow/tensorflow:latest-gpu-py3

ENV SFG_HOME=""

ADD app/ /app

RUN pip install -r /app/config/conda.req.list

ENTRYPOINT [ "python", "app/src/app.py" ]