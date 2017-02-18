FROM debian
MAINTAINER Yukimitsu Yabuki, yukimitsu.yabuki@gmail.com
RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install wget \
    && wget -O salmon.tar.gz https://github.com/COMBINE-lab/salmon/releases/download/v0.6.0/SalmonBeta-0.6.0_DebianSqueeze.tar.gz \
    && tar xvfz salmon.tar.gz \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*
WORKDIR /SalmonBeta-0.6.1_DebianSqueeze/bin
ENTRYPOINT ["./salmon"]
