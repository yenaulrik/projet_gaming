<?php

require_once MODEL.'jeuxModel.php';
require_once MODEL.'groupModel.php';
require_once 'class/GestionnaireFichiers.class.php';


class CreateGroup{
    private $jeuxModel;
    private $groupModel;
    private $gestionnaire;

    public function __construct()
    {
        $this->jeuxModel = new Jeux();
        $this->groupModel = new Group();
        if(isset($_POST['group_title'])){
            $this->gestionnaire = new GestionnaireFichiers();
        }
    }
    
    public function run(){
        $list = $this->jeuxModel->findByRate();
        
        // La page est actualisé et reçoit le formulaire en POST
        if(isset($_POST['group_title']) && isset($_SESSION['user'])){
            try{
                // le POST contient un fichier
                if( isset($_FILES['group_img'])){
                    //on envoie traiter le fichier dans la class gestionnaire
                    //qui retourne un tableau d'info dans $rep
                    try{
                        $rep = $this->gestionnaire->upload("group", $_FILES['group_img']);
                    }
                    catch(DomainException $e)
                    {
                        return [
                            'error' => $rep['error'],
                            'list' => $list
                        ];
                        
                    }
                    
                }
                if(!$rep['error']){
                    $this->groupModel->add( $_SESSION['user']['id'], $_POST['group_title'], $_POST['group_description'], $rep['img_name'] );
                }else{
                    $this->groupModel->add( $_SESSION['user']['id'], $_POST['group_title'], $_POST['group_description']);
                }
                
                $group_create = $this->groupModel->findByName($_POST['group_title']);
                $error =    'Votre groupe  <a href="?page=Group&group_id= ' . 
                            $group_create['group_id'] . 
                            '">' .
                            htmlspecialchars($group_create['group_title']) . '</a>  a bien été créé !';
                
                //on ajoute les jeux au groupe
                $this->groupModel->addGameForGroup($group_create['group_id'], $_POST['games_id']);
                
                return [
                    'error' => $error,
                    'list' => $list
                ];
            }
            catch(DomainException $e){
                
            }
        }else if(isset($_POST['group_title']) && !isset($_SESSION['user'])){
            return [
                'error' => "Vous devez vous connecter pour créer un groupe",
                'list' => $list
            ];
        }

        return [
            'list' => $list
        ];
        
    }


    // $group_creator_id, $group_title, $group_description, $group_img
    // faire une fonction qui calcul les groupes, articles, commentaires
    // pour obtenir le jeu le plus marquant
    // 1 point pour 1 commentaire
    // 10 point par article
    // 50 point par groupe 
}


$jeu = new CreateGroup();

extract($jeu->run());