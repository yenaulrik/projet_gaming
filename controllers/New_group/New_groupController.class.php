<?php
require_once MODEL.'jeuxModel.php';

class CreateGroup{
    private $jeuxModel;

    public function __construct()
    {
        $this->jeuxModel = new Jeux();
        
    }
    
    public function run(){
        $list = $this->jeuxModel->findByRate();
        
        return [
            'list' => $list
        ];
        
    }

    // faire une fonction qui calcul les groupes, articles, commentaires
    // pour obtenir le jeu le plus marquant
    // 1 point pour 1 commentaire
    // 10 point par article
    // 50 point par groupe 
}


$jeu = new CreateGroup();

extract($jeu->run());