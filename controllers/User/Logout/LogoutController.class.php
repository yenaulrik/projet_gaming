<?php

require_once 'class/UserSession.class.php';

class LogoutController
{
    public function run()
    {
		try {
			$userSession = new UserSession();
			$userSession->destroy();
            header("Location: ?page=Home");
		}
		catch(DomainException $e)
		{
			header("Location: ?page=Home");
		}
    }
}

$logout = new LogoutController();

$logout->run();