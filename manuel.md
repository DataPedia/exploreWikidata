
## Manuel pour requêter Wikidata

Objectif : Avoir un manuel francophone pour requêter Wikidata avec [Wikidata Query Service](https://query.wikidata.org/)

## Décrire un élément

Exemple :
* [Atom (Q16766305)](https://query.wikidata.org/#describe%20%3Chttp%3A%2F%2Fwww.wikidata.org%2Fentity%2FQ16766305%3E) :


    describe <http://www.wikidata.org/entity/Q16766305>

On peut aussi utiliser les préfixes :

    PREFIX wd: <http://www.wikidata.org/entity/>
    describe wd:Q16766305

## Requêtes

### Exemples

* [HackFrancophonie](https://github.com/etalab/HackFrancophonie/tree/master/data/sparql_wikidata)
* [Base des logiciels](https://gist.github.com/pachevalier/70e345b01c81dcb7b3d0)

### Ressources

* [Liste d'exemples](https://www.mediawiki.org/wiki/Wikibase/Indexing/SPARQL_Query_Examples)

## Automatiser les requêtes avec curl

Extraction au format csv :

    $ curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='REQUETE SPARQL' -H 'Accept: text/csv' > mydata.csv

Extraction au format json :

    $ curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query='REQUETE SPARQL' -H "Accept: application/json" > mydata.json

On peut aussi stocker la requête SPARQL dans un fichier texte (par exemple cats.sparql) et simplifier la ligne de commande :

    $ curl -G https://query.wikidata.org/bigdata/namespace/wdq/sparql --data-urlencode query="$(< cats.sparql)" -H 'Accept: text/csv' > wikidata_cats.csv

### Exemples

* [Extraction de l'ensemble des communes béninoises en CSV](https://github.com/etalab/HackFrancophonie/blob/master/data/sparql_wikidata/sparql_communes_benin.sh)

### Ressources

* [cURL examples to query Wikidata](http://colin.maudry.fr/curl-examples-to-query-wikidata/) par Colin Maudry
