FROM gitpod/workspace-full

RUN sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common -y \ 
    && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 \
    && sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' \
    && sudo apt install r-base -y \
    && sudo apt install build-essential -y \
    && sudo apt-get install gdebi-core -y \
    && wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-2022.07.1-554-amd64.deb \
    && sudo gdebi rstudio-server-2022.07.1-554-amd64.deb -y 


