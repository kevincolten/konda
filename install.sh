#! bash

CONDA_JSON=$(json -f conda.json)
CONDA_ENV_NAME=$(echo $CONDA_JSON | json environment)
CONDA_PYTHON_VERSION=$(echo $CONDA_JSON | json version)

conda create --yes --name $CONDA_ENV_NAME python=$CONDA_PYTHON_VERSION
source activate $CONDA_ENV_NAME

source ~/conda-install/update.sh
