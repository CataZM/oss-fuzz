FROM gcr.io/oss-fuzz-base/base-builder

ENV FUZZING_LANGUAGE=c

RUN apt-get update && apt-get install -y \
    git \
    make \
    gcc \
    g++

RUN git clone https://github.com/CataZM/syper-conf-2026.git
WORKDIR /src/syper-conf-2026

COPY build.sh $SRC/
