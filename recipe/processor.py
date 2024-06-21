import json
LOCAL_RECIPE = '../recipe/local_recipe_service.json'

config = json.load(open('../config.json'))
replace = config.get('replace')
setvalue = config.get('setvalue')

with open('../recipe/recipe_service.json') as infile, open(LOCAL_RECIPE, 'w') as outfile:
    for line in infile:
        for src, target in replace.items():
            line = line.replace(src, target)
        outfile.write(line)
recipe = json.load(open(LOCAL_RECIPE))
tasks = recipe['tasks']
tasks[1]['google_api']['kwargs']['partnerId'] = setvalue.get('partner-id-integer')
tasks[2]['sdf']['partner_id'] = setvalue.get('partner-id-integer')
tasks[2]['sdf']['read']['filter_ids']['values'] = setvalue.get('advertiser-ids-integer')
with open(LOCAL_RECIPE, 'w') as f:
    json.dump(recipe, f)
