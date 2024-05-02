FROM condaforge/miniforge3:latest

# Install system packages 
# RUN apt-get update && apt-get install -yq curl openssh-server wget git swig gfortran libblas-dev liblapack-dev libopenblas-dev && \
#     apt remove python3-pip && \
#     rm -rf /var/lib/apt/lists/*

# install pip packages 
# RUN pip install dymos && \
#     conda clean -afy && \
#     pip cache purge

# enable terminal colors for root user
RUN sed -i 's/xterm-color)/xterm-color|\*-256color)/g' /root/.bashrc

SHELL ["/bin/bash", "--login", "-c"]
