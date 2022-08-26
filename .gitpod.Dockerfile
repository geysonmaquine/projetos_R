FROM gitpod/workspace-full

USER gitpod

RUN brew install R \
    && brew install pandoc \
    && sudo apt install build-essential -y 





