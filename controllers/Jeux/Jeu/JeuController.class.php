<?php
require_once '../../../program/Database.class.php';
require_once '../../../models/groupModel.php';
require_once '../../../models/jeuxModel.php';


class JeuxController{
    private $jeuxModel;
    private $groupModel;

    public function __construct()
    {
        $this->jeuxModel = new Jeux();
        $this->groupModel = new Group();
    }
    
    public function run(){
        // quand un nom est tapé en recherche
        if(isset($_POST['game_name'])){
            $list = $this->jeuxModel->findByName($_POST['game_name']);
        }
        // quand un tag est saisie
        if(isset($_POST['tags_list'])){
            //aze
            $list = $this->jeuxModel->findByTag($_POST['tags_list']);
        }
        // sécurité 
        if(!isset($_POST['tags_list']) && !isset($_POST['game_name'])){
            $list = $this->jeuxModel->findByName('a');
        }
        
        $group_rate = $this->groupModel->findByRate();
        $group_date = $this->groupModel->findByDate();
        
        return [
            'list' => $list,
            'group_rate' => $group_rate,
            'group_date' => $group_date
        ];
        
    }


    // faire une fonction qui calcul les groupes, articles, commentaires
    // pour obtenir le jeu le plus marquant
    // 1 point pour 1 commentaire
    // 10 point par article
    // 50 point par groupe 
}


$jeu = new JeuxController();

extract($jeu->run());
include 'JeuView.phtml';