# Roq Trading Solutions

Solutions focused on development, testing and deployment of
algorithmic trading strategies.


## Overview

The Python interface is easily accessible through Jupyter Notebook.

There are many ways to install Jupyter Notebook.
Here we describe

* Using Docker
* Using Conda


## Docker

### Install

The installation of Docker is involved and will require root access.
Please follow the instructions from [Docker](https://docs.docker.com/install/overview/).

### Launch

```bash
# fetch latest image
docker pull roqtrading/roq-python:latest

# launch a Jupyter Notebook service
docker run -it --publish 8888:8888 --rm roqtrading/roq-python
```

> The log contains information about how to access Jupyter Notebook.

## Conda

### Install Miniconda

> *This section will demonstrate how to install Miniconda*.

A Conda environment allows you to install up-to-date binary packages
on your development box *without* requiring root access.

```bash
# download the miniconda installer
wget -N https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

# install miniconda (to your home directory)
bash Miniconda3-latest-Linux-x86_64.sh -b -u -p ~/miniconda3

# add roq-trading unstable as a conda channel
cat > ~/miniconda3/.condarc << EOF
channels:
  - defaults
  - https://roq-trading.com/conda/unstable
  - conda-forge
EOF
```

### Activate Miniconda

> *This section will demonstrate how to activate your Conda environment*.

This is how you activate your Conda environment

```bash
source ~/miniconda3/bin/activate
```

> Note! The following sections will assume you have *already* activated your
> Conda environment.


### Install Packages

```bash
# install jupyter and a couple of relevant python modules
conda install -y jupyter pandas matplotlib

# allow access from non-localhost (optional)
echo "c.NotebookApp.allow_origin = '*'" > ~/jupyter_notebook_config.py

# install roq's python module
conda install -y roq-python

# install roq's data package (optional)
conda install -y roq-data
```

> You don't have to install `roq-data`.
> We only include it to get access to some sample data.

### Clone GitHub

```bash
# install git
conda install -y git

# clone github
git clone https://github.com/roq-trading/roq-jupyter

# change into directory
cd roq-jupyter/notebooks
```

### Launch Jupyter Notebook

```bash
jupyter notebook --allow-root --port 8888 --ip 0.0.0.0 --config  ~/jupyter_notebook_config.py
```

> The log contains information about how to access Jupyter Notebook.

## Next steps

* [Contact us](mailto:info@roq-trading.com)
* [Roq Trading Solutions (website)](https://roq-trading.com)
* [Online documentation](https://roq-trading.com/docs)
* [Development samples](https://github.com/roq-trading/roq-samples)
* [Ansible playbook](https://github.com/roq-trading/roq-ansible)
* [Grafana dashboards](https://github.com/roq-trading/roq-grafana)
* [Vagrant development environments](https://github.com/roq-trading/roq-vagrant)
