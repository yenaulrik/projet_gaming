<?php

require_once MODEL.'groupModel.php';
require_once MODEL.'articlesModel.php';

class EditController{
    
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

    //envoie des infos dans le formulaire
        if(!isset($_GET['send_edit'])){
            
            return [
                'group' => $group,
                'jeux' => $list,
                'article' => $article
            ];
            
        }
        // Retour d'un formulaire
        // Vérification du formulaire
        if(isset($_GET['send_edit'])){
                // envoie dans la BDD
                $this->articlesModel->update($_GET['article'],$_POST['article_title'],$_POST['article_content'],$_POST['jeu_id'],$_POST['visible_by']);

            // redirection sur l'article dans la page du groupe
            $h = 'Location: ?page=Group&group_id=' . strval($_GET['group_id']);
            header($h);
        }
    }// RUN
}

$add = new EditController();
extract($add->run());