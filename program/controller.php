<?php 
class Controller{

    private $target ;
    
    private $viewLink;
    private $controllerLink;

    public function __construct()
    {
        $target = 'Home';
        
    }

    public function load(string $name = 'Home'){
        //Lien qu'on cherche à fournir dans la chaine de requete :
        //index ?page=Jeux => views\Jeux\JeuxView.phtml
        //index ?page=Jeux/Jeu => views\Jeux\Jeu\JeuView.phtml
        //La première condition vérifie ave strrch si $name contient "/"
        //si oui elle note views/ + $name (qui est un chemin de dossier) + la fin de $name à partir de "/"
        //      la fin du nom de fichier qui correspond
        //si non elle note views/ + $name / +$name + la fin du nom de fichier qui correspond
        //se qui permet maintenant de faire des dossiers
        
        if(strrchr($name, "/")){
            $viewLink = VIEWS_PATH .$name . '/' . substr(strrchr($name, "/"), 1) . 'View.phtml';
            $controllerLink = CONTROLLERS_PATH .$name . '/' . substr(strrchr($name, "/"), 1) . 'Controller.class.php';
        }else{
            $viewLink = VIEWS_PATH .$name . '/' . $name . 'View.phtml';
            $controllerLink = CONTROLLERS_PATH .$name . '/' . $name . 'Controller.class.php';
        }

        if(file_exists($viewLink) && file_exists($controllerLink)){
            //include $controllerLink;
            
            
            return [
                'viewLink' => $viewLink,
                'controllerLink' => $controllerLink
            ];
                
        }else{
            echo '<p>page chargé => ' .  $name . '  ; lien généré => ' . $viewLink . ' ; ; </p>';
            echo '<p>controller chargé => ' .  $name . '  ; lien généré => ' . $controllerLink . ' ; ; </p>';
            echo '<p>Vérifier que les fichiers recherchés et ceux que vous avez créés sont correctement nommés ; ; </p>';
            throw new ErrorException('page chargé => ' .  $name . '  ; lien généré => ' . $viewLink . ' ; ; ') ;
        }
    }
}