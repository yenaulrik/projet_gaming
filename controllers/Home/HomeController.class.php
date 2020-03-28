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
}


$jeu = new HomeController();

extract($jeu->run());