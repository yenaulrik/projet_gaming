<?php
require_once MODEL.'jeuxModel.php';
require_once MODEL.'groupModel.php';
require_once MODEL.'articlesModel.php';
require_once MODEL.'UserModel.class.php';

class HomeController{
    private $jeuxModel;
    private $groupModel;
    private $articles;
    private $userModel;

    public function __construct()
    {
        $this->jeuxModel = new Jeux();
        $this->groupModel = new Group();
        $this->articles = new Articles();
        $this->userModel = new UserModel();
    }
    
    public function run(){
        $list = $this->jeuxModel->findByRate();

        //securité si aucun groupe n'est selectionné
        if(!isset($_GET['group_id'])){
            header('Location: ?page=Home');
            exit();
        }
        

        $group = $this->groupModel->findOne($_GET['group_id']);
        $group_date = $this->groupModel->findByDate();
        $articles_all = $this->articles->findByGroup($_GET['group_id']);
        
        //si l'utilisateur souhaite rejoindre le group
        if(isset($_GET['group_id']) && isset($_GET['join'])){
            

            if(!isset($_SESSION['user'])){// si l'utilisateur n'est pas connecté
                return [
                    'list' => $list,
                    'group' => $group,
                    'group_date' => $group_date,
                    'articles' => $articles_all,
                    'error' => "Vous devez vous connecter pour rejoindre un groupe"
                ];
            }else{
                
                $user = $this->userModel->findOne($_SESSION['user']['id']);
                if(isset($_GET['confirm'])){ // retour du deuxieme IF pour changer de groupe
                    $this->userModel->updateGroup($_SESSION['user']['id'], $_GET['group_id'] );
                    return [
                        'list' => $list,
                        'group' => $group,
                        'group_date' => $group_date,
                        'articles' => $articles_all,
                        'error' => 'Vous êtes désormais inscrit dans ce groupe !'
                    ];
                }
                if($user['group_id'] != NULL){ // si l'utilisateur veut changer de groupe
                    $Oldgroup = $this->groupModel->findOne($user['group_id']);
                    return [
                        'list' => $list,
                        'group' => $group,
                        'group_date' => $group_date,
                        'articles' => $articles_all,
                        'error' => 'Vous êtes déjà dans le groupe : ' . $Oldgroup['group_title'] . ' Voulez-vous vraiment changer ? ' .
                                    '<a href="?page=Group&group_id='. $group["group_id"] . '&join=1&confirm=1">oui !</a>'
                    ];
                }else{ // si l'utilisateur n'a aucun groupe (Fresh user = group_id == NULL)
                    $this->userModel->updateGroup($_SESSION['user']['id'], $_GET['group_id'] );
                    return [
                        'list' => $list,
                        'group' => $group,
                        'group_date' => $group_date,
                        'articles' => $articles_all,
                        'error' => 'Vous êtes désormais inscrit dans ce groupe !'
                    ];
                }
            }
        }
        
        
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