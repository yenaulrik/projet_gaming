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
        
        // ajouter condition && $_SESSION['user_group'] == $_GET['group_id']
        // si la page est bien redirigé vers un groupe précis
        if(!isset($_GET['group_id']) ){
            header('Location: ?page=Home');
            exit();
        }

// article_title    jeu_name    visible_by   article_content

        echo isset($_GET['article_title']);
        // si on a un retour du formulaire complet 
        if(isset($_POST['article_title']) &&
        isset($_POST['jeu_name'])&&
        isset($_POST['visible_by'])&&
        isset($_POST['article_content'])){

            $this->articles->add(   $_POST['article_title'],
                                    $_POST['jeu_name'],
                                    $_POST['article_content'],
                                    $_POST['visible_by'],
                                    $_GET['group_id'],
                                    $_SESSION['user']['id']);
            // remplacer le 1 par $_SESSION['user']['id']
            $h = 'Location: ?page=Group&group_id=' . strval($_GET['group_id']);
            header($h);
            exit();
        }


        $list = $this->groupModel->findGameOfGroup($_GET['group_id']);
        $group = $this->groupModel->findOne($_GET['group_id']);

        return [
            'group' => $group,
            'jeux' => $list
        ];

    }

    // faire le lien entre les images de jeux / groupe 
    // au click partir sur la page concerné

    // faire une fonction qui calcul les groupes, articles, commentaires
    // pour obtenir le jeu le plus marquant
    // 1 point pour 1 commentaire
    // 10 point par article
    // 50 point par groupe 
}


$add = new AddController();

extract($add->run());