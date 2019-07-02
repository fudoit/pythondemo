FROM cargo.caicloudprivatetest.com/qatest/alpine:python3

MAINTAINER fufu@caicloud.io

WORKDIR  /src/

COPY requirements.txt /src/.
# Install app dependencies
RUN pip3 install -r requirements.txt

# Bundle app source
COPY simpleapp.py /src/simpleapp.py


EXPOSE  8000

ENTRYPOINT ["python3", "/src/simpleapp.py", "-p 8000"]