FROM continuumio/miniconda3:latest

# Update conda and install pip
RUN conda update -n base -c defaults conda -y \
    && conda install -y pip \
    && conda clean -afy

WORKDIR /workspace

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888