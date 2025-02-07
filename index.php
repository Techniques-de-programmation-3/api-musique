<?php
    require_once 'controlleurs/listes.php';
?>

<!doctype html>
<html lang="fr">
 <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="css/styles.css">
  <title>Mon super site - Accueil</title>
 </head>
 <body>
    <div>
      <h1>API musique</h1>

      <h2>Listes</h2>
      <h3>GET</h3>
      <a href="api/listes/">Consulter toutes les listes de lecture</a><br>
      <a href="api/listes/?public=true">Consulter les listes de lecture publiques</a><br>
      <a href="api/listes/?id=1">Consulter la liste de lecture #1</a><br>
      <a href="api/listes/?utilisateur=1">Consulter les listes de lecture de l'utilisateur 1</a><br><br>

      <h3>POST</h3>
      <b>url :</b> api/listes/<br>
      <b>body :</b> 
      <pre>
        <code>
{
  "titre": "titre de la liste",
  "sousTitre": "sous-titre de la liste",
  "image": "https://picsum.photos/200/300",
  "description": "lorem ipsum",
  "type": "Liste de lecture",
  "verifie": true,
  "datePublication": "2025-02-06",
  "visibilite": "publique"
}
        </code>
      </pre>

      <h3>PUT</h3>
      <b>url :</b> api/listes/?id=1<br>
      <b>body :</b> 
      <pre>
        <code>
{
  "titre": "titre de la liste modifié",
  "sousTitre": "sous-titre de la liste modifié",
  "image": "https://picsum.photos/200/300",
  "description": "lorem ipsum modifié",
  "type": "Liste de lecture",
  "verifie": false,
  "datePublication": "2025-02-07",
  "visibilite": "privee"
}
        </code>
      </pre>

      <h3>DELETE</h3>
      <b>url :</b> api/listes/?id=6<br>

      <h2>Listes</h2>
      <h3>GET</h3>
      <a href="api/chansons/">Consulter les chansons</a><br>
    </div>
 </body>
</html>


