sudo apt-get install python3-venv

python3 -m venv starthinkervirtualenv

source starthinkervirtualenv/bin/activate

pip install --require-hashes --upgrade setuptools

python -m pip install --require-hashes -U pip

pip install --require-hashes ez_setup

pip install --require-hashes -r requirements.txt
