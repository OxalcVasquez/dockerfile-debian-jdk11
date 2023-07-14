FROM jofrantoba/debiantenbuster:v1

WORKDIR /opt

RUN apt-get update && apt-get install -y wget libasound2 libasound2-data

RUN wget --no-check-certificate "https://github.com/OxalcVasquez/java-versions/raw/main/jdk-11.0.18_linux-x64_bin.deb" -O /tmp/jdk-11.deb

RUN dpkg -i /tmp/jdk-11.deb

RUN apt-get install -f

ENV PATH="/usr/lib/jvm/jdk-11/bin:${PATH}"

CMD ["java", "-version"]