#! bash

source ~/conda-install/activate.sh

json -f conda.json | json conda | json -a channel + package | while read CONDA_PACKAGE ; do
    conda install -y -c https://conda.anaconda.org/$CONDA_PACKAGE
done
