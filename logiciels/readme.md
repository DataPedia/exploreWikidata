
# Base de données des logiciels

## Fichiers

* logiciels.sparql : principale requête
* logiciels_sitelinks.sparql : requête avec uniquement le nombre de liens interwikis par logiciels.
* query_data.sh : download wd_logiciels.csv, wd_logiciels.json, wd_logiciels_sitelinks.csv
* wd_logiciels.csv : table des logiciels (csv)
* wd_logiciels.json : table des logiciels (json)
* wd_logiciels_sitelinks.csv : table des logiciels avec nombre d'interwikis
* explore_csv.R : analyse du fichier wd_logiciels.csv

## Modèle de données de la base wd_logiciels

### Champ

Ensemble des éléments dont la nature est une sous-classe de logiciel

### Variables

- logiciel : identifiant du logiciel
- logiciel_frlabel : libellé francophone
- logiciel_enlabel : libellé anglophone
- frwiki : article Wikipedia francophone
- licence : licence
- licence_frlabel : libellé francophone de la licence
- site_officiel : url du site officiel
- developpeur : développeur
- developpeur_frlabel : libellé francophone du développer
- os : système d'exploitation
- os_frlabel : libellé francophone du système d'exploitation
- tag_stackexchange : [tag stackexchange](https://www.wikidata.org/wiki/Property:P1482)
- versions : [versions](https://www.wikidata.org/wiki/Property:P348)
- code_source : [url de dépôt du code source](https://www.wikidata.org/wiki/Property:P1324)
- freebase : [identifiant freebase](https://www.wikidata.org/wiki/Property:P646)
- langage_programmation : [langage de programmation](https://www.wikidata.org/wiki/Property:P277)
- suivi_bugs : [url de logiciel de suivi des bugs](https://www.wikidata.org/wiki/Property:P1401)
- frwikibook : manuel francophone sur Wikibooks
- image : image illustrant l'élément (P18)
  - exemple : https://commons.wikimedia.org/wiki/File:Firefox_40_on_Windows_10.png
- logotype : logotype du logiciel
  - exemple : https://commons.wikimedia.org/wiki/File:Mozilla_Firefox_logo_2013.svg

## TODO

- Nombre de liens sur les différents projets Wikipédia
- Récupérer plus de choses dans l'historique des versions
- Récupérer P31
- Dépendance https://www.wikidata.org/wiki/Property:P1547
- Identifiant Open Hub : https://www.wikidata.org/wiki/Property:P1972
- Bibliothèque d'interface utilisateur : https://www.wikidata.org/wiki/Property:P1414
- Date de fondation/création : https://www.wikidata.org/wiki/Property:P571
- IRC : https://www.wikidata.org/wiki/Property:P1613
- plate-forme : https://www.wikidata.org/wiki/Property:P400
- langue de l'oeuvre : https://www.wikidata.org/wiki/Property:P407
