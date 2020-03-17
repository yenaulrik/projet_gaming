<?php
require_once MODEL.'jeuxModel.php';
require_once MODEL.'groupModel.php';

class HomeController{
    private $jeuxModel;
    private $groupModel;

    public function __construct()
    {
        $this->jeuxModel = new Jeux();
        $this->groupModel = new Group();
    }
    
    public function run(){
        $list = $this->jeuxModel->findByRate();
        $group_rate = $this->groupModel->findByRate();
        $group_date = $this->groupModel->findByDate();
        return [
            'list' => $list,
            'group_rate' => $group_rate,
            'group_date' => $group_date
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