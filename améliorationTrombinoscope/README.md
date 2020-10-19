# Projet-trombinoscope

Ce projet est un simple projet qui consiste à filtrer et mieux visualiser les données et les informations relative au cours Langages et Développement d'un ensemble d'étudiants.

# Sénarion du projet 

* Le prof à crée un formulaire en utilisant google-Form
* Chaque étudiant à remplis ce formulaire là 
* On récupère les données de tous les étudiants en format CSV
* Notre programme récupère les données via un appel sur l'api de google.
* Après avoir récupérer les données on les affichera sur une page html avec un système de filtrage et un     système graphique en utilisant D3Js.

# Explications 

* Quand l'utilisateur accède sur mon petit site la page principale ( la page index) s'affiche:
* Cette page contiendra la liste des étudiants de toutes les promos c'est à dire l'ensemble des étudiants qui ont remplis le formulaire fournis par le prof.
* Chaque étudiant est représenter par une card contenant : sa photo, son prénom et nom, le nom de sa formation, et un lien vers son compte github.
* En haut de la page il y a une bare de navigation qui contient la liste des formation et une bare pour voir le statistiques.
* Quand l'utilisateur clique sur un nom de formation, la liste des étudiants affichée sera filtrer et du coup on aura que la liste des étudiants correspondante à cette formation qui sera affichée. 
* Si l'utilisateur Clique sur la bare voir les statistiques, la page html changera du contenu et affichera en premier temps les statistiques correspondantes à liste de tous les étudiants.
* Les statistiques affichées sont : l'ensemble des parcours ainsi que le nombre d'étudiants  dans chaque parcours, les niveaux de connaissances du Français ainsi que le nombre d'étudiants pour chaque niveau,  les niveaux de connaissances de l'anglais ainsi que le nombre d'étudiants pour chaque niveau, les différents type de connexions ainsi que le nombre d'étudiants utilisant chaque type, nombre d'étudiants ayant ou pas un ordinateur personnel.
* En haut de la page on aura toujours une bare de navigation qui contient la liste des formation et une bare pour retourner à la page principale qui contient la liste des étudiants
chaque bare permet de filtrer les statistiques selon la formation sur laquelle on a cliqué.

# Codage 

* Le html, le javascript ainsi que les css sont mis dans un seul fichier qui est : index.html

# Technologies utilisées :

* Pour le balisage : HTML.
* Pour le style : CSS.
* Pour la mise en forme : BootStrap.
* Pour le coté dynamique : JavaScript.
* Pour Les représentations grapgiques et le filtrage : D3Js.
* Pour l'adaptation et le changement du style de la bare de navigation selon la taille de l'écrant : JQuery 

# Quelques précisions :

* Le lien pour les données CSV :  <https://docs.google.com/spreadsheets/d/e/2PACX-1vQHni5Lu--I9WKTWGHOJ3_SBRW47sPTvxxRN6FOaGchhMztr4gm3I5C91EJq1CcGOsmfsOfa2f7PfrF/pub?gid=11903047&single=true&output=csv>

* pour ajouter D3Js sur vos projet : <script src="https://d3js.org/d3.v6.min.js"></script>

* pour ajouter JQuery : <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

* pour La scalabilité sur les graphes : <script src="https://d3js.org/d3-scale.v3.min.js"></script>

* pour la gestions des axes sur les graphes : <script src="https://d3js.org/d3-axis.v2.min.js" ></script>

* pour ajouter bootstarp : <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

* pour cloner ce (repository) sur votre git local : git clone https://github.com/samszo/THYP_20-21.git

* n'oubliez pas de faire git pull pour ne pas écraser lesprojets des autres

-----------------------------------------------------------------------------------------------------------
# amélioration à venir 


* donner à l'utilisateur le pouvoir de changer le type d'affichage du trombinoscope : soit en arbre en cercle ou autre.

* permettre à l'utilisateur de choisir le type d'affichage des statistiques : soit des graphes, soit des charts, soit des cerles ou encore des nuages de mots...

* ajouter un formulaire pour générer un cv pour chaque étudiant

