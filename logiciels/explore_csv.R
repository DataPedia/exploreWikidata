
library(readr)
library(dplyr)
df_logiciels <- read_csv("wikidata_logiciels.csv")

df_logiciels %>%
  distinct(logiciel) %>%
  nrow()

df_logiciels %>% str()

# Répartition des logiciels par licence
df_logiciels %>%
  distinct(logiciel, licence) %>%
  group_by(licence, licence_frlabel) %>%
  summarise(n = n()) %>%
  ungroup() %>%
  arrange(desc(n)) %>%
  View()

# 13 000 logiciels dans frwiki
df_logiciels %>%
  distinct(logiciel) %>%
  group_by(has_frwiki = !is.na(frwiki)) %>%
  summarise(n = n())

# Problème avec Wikibook
df_logiciels %>%
  distinct(logiciel) %>%
  group_by(has_frwikibook = !is.na(frwikibook)) %>%
  summarise(n = n())

# A un label
df_logiciels %>%
  distinct(logiciel) %>%
  group_by(has_frlabel = !is.na(logiciel_frlabel)) %>%
  summarise(n = n())

# Stackexchange
df_logiciels %>%
  distinct(logiciel) %>%
  group_by(has_stack = !is.na(tag_stackexchange)) %>%
  summarise(n = n())

# Répartition par OS
df_logiciels %>%
  distinct(logiciel, os) %>%
  group_by(os, os_frlabel) %>%
  summarise(n = n()) %>%
  ungroup() %>%
  arrange(-n) %>%
  View()

df_logiciels %>% str()
