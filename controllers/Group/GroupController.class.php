<?php
require_once MODEL.'jeuxModel.php';
require_once MODEL.'groupModel.php';
require_once MODEL.'articlesModel.php';

class HomeController{
    private $jeuxModel;
    private $groupModel;
    private $articles;

    public function __construct()
    {
        $this->jeuxModel = new Jeux();
        $this->groupModel = new Group();
        $this->articles = new Articles();
    }
    
    public function run(){
        $list = $this->jeuxModel->findByRate();
        if(!isset($_GET['group_id'])){
            header('Location: ?page=Home');
            exit();
        }
        $group = $this->groupModel->findOne($_GET['group_id']);
        $group_date = $this->groupModel->findByDate();
        $articles_all = $this->articles->findByGroup($_GET['group_id']);
        return [
            'list' => $list,
            'group' => $group,
            'group_date' => $group_date,
            'articles' => $articles_all
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


$jeu = new HomeController();

extract($jeu->run());