<?php
require_once MODEL.'UserModel.class.php';
require_once 'class/UserSession.class.php';

class LoginController
{

    public function __construct()
	{
		$this->userModel = new UserModel();
    }
    
    public function run()
    {
		
		$userModel = new UserModel();
		
		try {
        	 // Tester si les identifiants de connexion sont corrects. Si c'est le cas : on récupère id nom prénom de l'utilisateur. Si ce n'est pas : erreur fatale.
			$userInfo = $userModel->checkLogin($_POST['email'], $_POST['password']);
			
        	 // Le code ci-dessous ne sera exécuté que si l'appel a checkLogin a bien fonctionné
        	 // En cas de connexion réussite, créer la session utilisateur
			/*session_start();
			$_SESSION['user'] = $userInfo;*/
			$userSession = new UserSession();
			$userSession->create($userInfo);
        	 // Enregistrer un message flash
			
        	 // Rediriger vers la home
            header("Location: ?page=Home");
		}
		catch(DomainException $e)
		{
			header("Location: ?page=Home&error=login");
		}

    }

}

$signup = new LoginController();

$signup->run();