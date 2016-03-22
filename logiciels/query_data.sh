# exemple : bash query_json.sh

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< logiciels.sparql)" -H "Accept: application/json" > wd_logiciels.json

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< logiciels.sparql)" -H 'Accept: text/csv' > wd_logiciels.csv

curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< logiciels_sitelinks.sparql)" -H 'Accept: text/csv' > wd_logiciels_sitelinks.csv
