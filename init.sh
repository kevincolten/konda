#! bash

if [ ! -f ./conda.json ]; then
    read -p "What would you like to name this environment? " CONDA_ENVIRONMENT
    read -p "What version of python would you like to use? " CONDA_PYTHON_VERSION
    touch ./conda.json
    echo '{
        "environment": "'${CONDA_ENVIRONMENT}'",
        "version": "'${CONDA_PYTHON_VERSION}'",
        "conda":[]
    }' > conda.json
    echo "conda.json file created!"
else
    echo "conda.json file already exists!"
fi
