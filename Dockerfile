FROM pyston/pyston:2.3.2
RUN apt-get update && apt-get upgrade -y
RUN pyston3 -m pip install -U pip setuptools wheel -vv
COPY . .
RUN apt-get install rustc -y
RUN pyston3 -m pip install -r requirements.txt -vv