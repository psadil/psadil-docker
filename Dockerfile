FROM  rocker/verse:latest
MAINTAINER Patrick Sadil psadil@gmail.com

RUN apt-get update -qq && apt-get -y install \
    cargo 

RUN install2.r --error \
    blogdown \
    gganimate \
    png \
    gifski \
    magick \
    cowplot \
    CircStats
    
RUN Rscript -e "blogdown::install_hugo(version = '0.51')"
