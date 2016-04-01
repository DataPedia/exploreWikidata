
## Objectif : Extraire l'ensemble des événements de Wikidata

Exemples d'événements : une élection, un concert, un événement sportif, un attentat, une guerre, une exposition.

Sélection des élections (~8 000 résultats) :

    SELECT ?event ?event_frlabel
    WHERE {
        ?event wdt:P31 wd:Q40231 .
  		OPTIONAL {?event rdfs:label ?event_frlabel filter (lang(?event_frlabel) = "fr") .}
    }

Sélection des sous-classes d'élections (~15 000 résultats) :

    SELECT ?event ?event_frlabel
    WHERE
    {
  		  ?event p:P31 ?statement .
        ?statement ps:P31 ?instanceof .
        ?instanceof wdt:P279* wd:Q40231 .
  		    OPTIONAL {?event rdfs:label ?event_frlabel filter (lang(?event_frlabel) = "fr") .}
        }


Sélection des événements (Q1190554) :

        SELECT ?event ?event_frlabel
        WHERE
        {
          		?event wdt:P31 wd:Q1190554 .
          		OPTIONAL {?event rdfs:label ?event_frlabel filter (lang(?event_frlabel) = "fr") .}
        }

Sélection des sous-classes d'événement (échec) :

    SELECT ?event ?event_frlabel
      WHERE
      {
  		?event p:P31 ?statement .
        ?statement ps:P31 ?instanceof .
        ?instanceof wdt:P279* wd:Q1190554 .
  		OPTIONAL {?event rdfs:label ?event_frlabel filter (lang(?event_frlabel) = "fr") .}
    }

Sélection des attentats


    SELECT ?event ?event_frlabel
    WHERE
    {
  		  ?event wdt:P31 wd:Q5710433 .
  		    OPTIONAL {?event rdfs:label ?event_frlabel filter (lang(?event_frlabel) = "fr") .}
        }


Ensemble des éléments avec une date et des coordonnées géographiques (~ 3000 résultats) :

    SELECT ?event ?event_frlabel ?date ?coord
      WHERE {
  		    ?event wdt:P585 ?date .
  		?event wdt:P625 ?coord .
  		OPTIONAL {?event rdfs:label ?event_frlabel filter (lang(?event_frlabel) = "fr") .}
      }

Ensemble des éléments avec une date et un lieu (~3000 résultats) :

    SELECT ?event ?event_frlabel ?date ?place
    WHERE
    {
  		?event wdt:P585 ?date .
  		?event wdt:P276 ?place .
  		OPTIONAL {?event rdfs:label ?event_frlabel filter (lang(?event_frlabel) = "fr") .}
    }

Ensemble des événements avec une date de début, une date de fin et un lieu :

    SELECT ?event ?event_frlabel ?datedebut ?datefin ?place
    WHERE {
  		?event wdt:P580 ?datedebut .
  		?event wdt:P582 ?datefin .
  		?event wdt:P276 ?place .
  		OPTIONAL {?event rdfs:label ?event_frlabel filter (lang(?event_frlabel) = "fr") .}
    }
