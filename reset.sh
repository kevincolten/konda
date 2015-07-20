#! bash

source deactivate
conda env remove -y --name $(json -f conda.json | json environment)
source ~/conda-install/install.sh
