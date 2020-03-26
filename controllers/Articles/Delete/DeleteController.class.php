<?php

require_once MODEL.'groupModel.php';
require_once MODEL.'articlesModel.php';

class DeleteController{
    
    // initialiser les models
    private $groupModel;
    private $articles;

    public function __construct()
    {
        $this->groupModel = new Group();
        $this->articlesModel = new Articles();
    }

    public function run(){
    // Vérification des $_GET
        if(!isset($_GET['group_id']) || !isset($_GET['article'])){
            header('Location: ?page=Home');
            exit();
        }

    // arrivée sur la page de base
        // recolte des infos pour la page
        $list = $this->groupModel->findGameOfGroup($_GET['group_id']);
        $group = $this->groupModel->findOne($_GET['group_id']);
        $article = $this->articlesModel->findOneArticle($_GET['article']);

    // on vérifie que l'utilisateur appartient bien au groupe

    // on supprime l'article
        $this->articlesModel->delete($_GET['article']);
    // on retourne à la page du groupe
        $h = 'Location: ?page=Group&group_id=' . strval($_GET['group_id']);
        header($h);

    }

}


$add = new DeleteController();

$add->run();