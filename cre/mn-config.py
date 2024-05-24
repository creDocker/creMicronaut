#!/usr/bin/python

#pip3 install pyyaml
import yaml
from pathlib import Path

DATA_PATH = Path.cwd()
print(DATA_PATH)
configFile = (DATA_PATH / 'mn-apps' / 'mn-init' / 'src' / 'main' / 'resources' /'application.yml')

with open(configFile) as istream:
    ymldoc = yaml.safe_load(istream)

    ymldoc['micronaut']['application']['comment'] = 'mn-config.py was NOT adapted!'

with open(configFile, "w") as ostream:
    yaml.dump(ymldoc, ostream, default_flow_style=False, sort_keys=False)


