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

}


	$signup = new SignupController();

	$signup->run();