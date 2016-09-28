FROM python:3.5

# Download and install wkhtmltopdf
RUN apt-get update && apt-get install -y build-essential locales xorg-dev libssl-dev wget curl
RUN wget http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
RUN tar xf wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
RUN cp wkhtmltox/bin/* /usr/bin/

COPY locale.gen /etc/locale.gen
RUN locale-gen
