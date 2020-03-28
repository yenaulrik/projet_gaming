<?php
require_once MODEL.'jeuxModel.php';
require_once MODEL.'groupModel.php';
require_once MODEL.'tagsModel.php';

class JeuxController{
    private $jeuxModel;
    private $groupModel;
    private $tagsModel;

    public function __construct()
    {
        $this->jeuxModel = new Jeux();
        $this->groupModel = new Group();
        $this->tagsModel = new Tags();
    }
    
    public function run(){
        $list = $this->jeuxModel->findByRate();
        $group_rate = $this->groupModel->findByRate();
        $group_date = $this->groupModel->findByDate();
        $tagsType = $this->tagsModel->findTypes();
        $tagsList = $this->tagsModel->findAll();
        
        return [
            'list' => $list,
            'group_rate' => $group_rate,
            'group_date' => $group_date,
            'tagsType' => $tagsType,
            'tagsList' => $tagsList
        ];
        
    }// RUN

}


$jeu = new JeuxController();

extract($jeu->run());