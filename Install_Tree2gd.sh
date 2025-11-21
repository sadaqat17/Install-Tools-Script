#!/bin/bash
#https://doi.org/10.1093/bioinformatics/btac669
# Create Tree2gd Environment
conda create -n Tree2gd python=3.8 -y

# Activate Tree2gd environment
conda activate Tree2gd

# Configure conda channels
conda config --add channels conda-forge
conda config --add channels bioconda
conda config --add channels defaults

conda install -y -c conda-forge r-base=4.2.3 -y
pip install --upgrade pip
pip install Tree2gd

conda install -y -c bioconda diamond muscle iqtree mcl -y

conda deactivate
echo "Installation completed."
echo "Use: conda activate Tree2gd"

# Test Tree2gd
Tree2gd -h

