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

    // on vérifie que l'utilisateur appartient bien au groupe et est bien connecté
        if(!isset($_SESSION['user']) || $_SESSION['user']['group_id'] != $_GET['group_id']){
            header('Location: ?page=Home');
            exit();
        }
    // on supprime l'article si tout va bien
        $this->articlesModel->delete($_GET['article']);
    // on retourne à la page du groupe
        $h = 'Location: ?page=Group&group_id=' . strval($_GET['group_id']);
        header($h);

    }// RUN

}


$add = new DeleteController();

$add->run();