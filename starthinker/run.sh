# uncomment the next line if you need to set up a cronjob to schedule run.sh
# cd {/rootdirectory/to/starthinker-directory}

source starthinker_assets/development.sh
source starthinkervirtualenv/bin/activate

python ../recipe/processor.py

python starthinker/tool/recipe.py ../recipe/local_recipe_service.json -s DEFAULT -p [project-id] --force --verbose
