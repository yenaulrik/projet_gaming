<?php
require_once MODEL.'UserModel.class.php';

class SignupController
{
	private $userModel;

	public function __construct()
	{
		$this->userModel = new UserModel();
	}

	public function run(){
        try{
			
			$this->userModel->add(
				$_POST['first_name'],
				$_POST['last_name'],
				$_POST['pseudo'],
				strtolower($_POST['email']),
				$_POST['password']
			);
			
			
        	 // rediriger vers la home
			header("Location: ?page=Home");
			

		}
		catch(Exception $e) {
    	     // Envoyer le message d'erreur à la vue, ainsi que les saisies précédentes
			
			echo $e;
		
		}
        
    }

    // faire une fonction qui calcul les groupes, articles, commentaires
    // pour obtenir le jeu le plus marquant
    // 1 point pour 1 commentaire
    // 10 point par article
    // 50 point par groupe 
}


	$signup = new SignupController();

	$signup->run();