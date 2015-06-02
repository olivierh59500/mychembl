#!/bin/bash

mkdir /home/chembl/notebooks
curl -o /home/chembl/notebooks/01_myChEMBL_introduction.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/01_myChEMBL_introduction.ipynb
curl -o /home/chembl/notebooks/02_myChEMBL_web_services.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/02_myChEMBL_web_services.ipynb
curl -o /home/chembl/notebooks/03_myChEMBL_predict_targets.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/03_myChEMBL_predict_targets.ipynb
curl -o /home/chembl/notebooks/04_myChEMBL_plotting_tutorial.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/04_myChEMBL_plotting_tutorial.ipynb
curl -o /home/chembl/notebooks/05_myChEMBL_MDS_tutorial.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/05_myChEMBL_mds_tutorial.ipynb
curl -o /home/chembl/notebooks/06_myChEMBL_differences_with_ChEMBL.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/06_myChEMBL_differences_with_ChEMBL.ipynb
curl -o /home/chembl/notebooks/07_myChEMBL_Beaker.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/07_myChEMBL_Beaker.ipynb
curl -o /home/chembl/notebooks/08_myChEMBL_Django_ORM.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/08_myChEMBL_Django_ORM.ipynb
curl -o /home/chembl/notebooks/09_myChEMBL_BLAST_and_druggability.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/09_myChEMBL_BLAST_and_druggability.ipynb
curl -o /home/chembl/notebooks/10_myChEMBL_machine_learning.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/10_myChEMBL_machine_learning.ipynb
curl -o /home/chembl/notebooks/11_myChEMBL_SureChEMBL.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/11_myChEMBL_SureChEMBL.ipynb
curl -o /home/chembl/notebooks/12_myChEMBL_drugs_ADME.ipynb https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/12_myChEMBL_drugs_ADME.ipynb

ipython profile create mychembl
curl -o /home/chembl/.ipython/profile_mychembl/ipython_notebook_config.py https://raw.githubusercontent.com/chembl/mychembl/master/configuration/mychembl_ipython_notebook_config.py

cd /home/chembl/.ipython/nbextensions/
wget https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js
mkdir mathjax
cd mathjax
wget https://cdn.mathjax.org/mathjax/latest/MathJax.js

# create directory for storing temporary files:
mkdir /home/chembl/ipynb_workbench

# we would like to tread ipynb_workbench directory as a regular python module so creating __init__.py:
touch /home/chembl/ipynb_workbench/__init__.py

# install some files to ipynb_workbench:
curl -o /home/chembl/ipynb_workbench/physchem_props_heatmap.csv https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/physchem_props_heatmap.csv
curl -o /home/chembl/ipynb_workbench/settings.py https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/settings.py
curl -o /home/chembl/ipynb_workbench/A2A_Adenosine_set_mychembl.csv https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/A2A_Adenosine_set_mychembl.csv
curl -o /home/chembl/ipynb_workbench/US_antimalarial_patents_cmpds.txt https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/US_antimalarial_patents_cmpds.txt
curl -o /home/chembl/ipynb_workbench/fps.pkl https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/fps.pkl
curl -o /home/chembl/ipynb_workbench/smiles_cas_N6512.smi https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/smiles_cas_N6512.smi

curl -o /home/chembl/.ipython/profile_mychembl/static/custom/custom.css https://raw.githubusercontent.com/chembl/mychembl/master/ipython_notebooks/custom.css
