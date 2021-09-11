# FROM centos:latest

# RUN yum install -y httpd \
#   zip \ 
#  unzip
#  ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
#  WORKDIR /var/www/html
#  RUN unzip loxury.zip
#  RUN cp -rvf loxury/*
#  RUN rm -rf loxury loxury.zip
#  CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#  EXPOSE 80

# FROM httpd:2.4
# RUN apt-get update -y
# RUN apt-get install git -y
# RUN git clone https://github.com/Ahmad-Faqehi/loxy.git
# RUN cp -r loxy/* /usr/local/apache2/htdocs/
# EXPOSE 80


FROM httpd:2.4
RUN apt-get update -y
RUN apt-get install git -y
RUN git clone https://github.com/Ahmad-Faqehi/shopWeb.git
RUN cp -r shopWeb/* /usr/local/apache2/htdocs/
EXPOSE 80


