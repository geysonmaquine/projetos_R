FROM gitpod/workspace-full

RUN sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common -y \ 
    && sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common \
    && sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' \
    && sudo apt install r-base -y \
    && sudo apt install build-essential -y \

