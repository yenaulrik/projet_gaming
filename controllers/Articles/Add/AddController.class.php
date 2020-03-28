<?php

require_once MODEL.'groupModel.php';
require_once MODEL.'articlesModel.php';

class AddController{
    
    private $groupModel;
    private $articles;

    public function __construct()
    {
        $this->groupModel = new Group();
        $this->articles = new Articles();
    }
    
    public function run(){
        
        // on vérifie si la page chargé contient bien un groupe en cible
        if(!isset($_GET['group_id']) ){
            header('Location: ?page=Home');
            exit();
        }

// article_title    jeu_name    visible_by   article_content

        // si on a un retour du formulaire complet 
        if(isset($_POST['article_title']) &&
        isset($_POST['jeu_name'])&&
        isset($_POST['visible_by'])&&
        isset($_POST['article_content'])){
            // ajout des infos du form dans la bdd
            $this->articles->add(   $_POST['article_title'],
                                    $_POST['jeu_name'],
                                    $_POST['article_content'],
                                    $_POST['visible_by'],
                                    $_GET['group_id'],
                                    $_SESSION['user']['id']);
            
            // redirection vers l'article
            $h = 'Location: ?page=Group&group_id=' . strval($_GET['group_id']);
            header($h);
            exit();
        }


        //si pas de retour du formulaire, afficher le formulaire en envoyant les infos pour les option & checkbox
        $list = $this->groupModel->findGameOfGroup($_GET['group_id']);
        $group = $this->groupModel->findOne($_GET['group_id']);

        return [
            'group' => $group,
            'jeux' => $list
        ];

    }// RUN

}


$add = new AddController();

extract($add->run());