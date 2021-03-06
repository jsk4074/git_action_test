FROM tensorflow/tensorflow

RUN apt-get update ##[edited]
RUN apt-get install ffmpeg libsm6 libxext6  -y

RUN pip3 install --upgrade pip
RUN python3 -m pip install --upgrade setuptools
RUN pip3 install --no-cache-dir  --force-reinstall -Iv grpcio==1.39.0

ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code
# install tensorflow
# RUN pip3 install --upgrade https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-2.6.0-py3-none-any.whl
RUN pip3 install -r requirements.txt
COPY . /code/

CMD ["python3", "manage.py", "runserver", "0.0.0.0:80"]
