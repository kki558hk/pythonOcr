# ベースイメージ名:タグ名
FROM continuumio/anaconda3:2019.03

RUN apt-get -y update && apt-get install -y \
    sudo \
    wget \
    vim \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libglib2.0-0

WORKDIR /usr/src/app

COPY ./app/requirements.txt /usr/src/app/

RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

# # install jupyterlab
# ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root", "--LabApp.token=''"]