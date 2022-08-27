FROM gitpod/workspace-full

USER gitpod
RUN cd 
RUN sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common -y 
RUN sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 
RUN sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
RUN sudo apt install r-base -y 
RUN sudo apt install build-essential -y
RUN sudo apt install pandoc -y
RUN sudo Rscript Biblioteca.R


