<?php
define('ROOT_DIR', dirname(__FILE__));
define('VIEWS_PATH', 'views/' );
define('CONTROLLERS_PATH', 'controllers/' );
define('CLASS_PATH', 'class/' );
define('IMG_PATH', 'images/');
define('MODEL', 'models/');

require_once 'program/Database.class.php';
require_once 'program/controller.php';
require_once 'class/UserSession.class.php';

$session = new UserSession;
$content = new Controller;

if(isset($_GET['page'])){
    $contentView = $content->load($_GET['page']);
}else{
    $contentView = $content->load();    
}

include $contentView['controllerLink'];
include 'views/layout.phtml';

/* TODO */
/*
* Modification d'image des groupes
* outils reduction d'image ?
* ajout & supression des jeux pour groupe
* ajout & suppression des tag pour jeux
* commenter les fonctions
* revoir le JS
* revoir la sécurité des informations entréees par l'utilisateur
* vérifier la mise en forme des informations (type mail, longueur password ...)
* créer function JS pour la mise en forme
* responsive ... tablette & telephone ?





*/