<?php

class UserModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }
    
    
    public function findOne(int $id)
    {
        return $this->db->queryOne(
            'SELECT * FROM user WHERE user_id = :id',
            [
                ':id'   => $id
            ]
        );
    }
    public function findName(int $id)
    {
        $user = $this->db->queryOne(
            'SELECT `user_pseudo` FROM user WHERE user_id = :id',
            [
                ':id'   => $id
            ]
        );
        return $user['user_pseudo'];
    }

    public function add( $first_name, $last_name, $pseudo, $email, $password ) 
    {
        $this->db->executeSql(
            'INSERT INTO user
            
            (user_first_name,user_last_name,user_pseudo,user_mail,user_password,user_created_at)
            VALUES
            (:first_name,:last_name,:pseudo,:email,:password,NOW() )',
            [
                ':first_name' => $first_name,
                ':last_name' => $last_name,
                ':pseudo' => $pseudo,
                ':email' => $email,
                ':password' => password_hash($password, PASSWORD_DEFAULT)
            ]
        );
    }
    
    public function checkLogin(string $email, string $password) : array
    {
        // Vérifier si un utilisateur enregistré possède l'email passé en paramètre
        $user = $this->db->queryOne(
            'SELECT * FROM user WHERE user_mail = :email',
            [
                ':email' => $email    
            ]
        );
        
        // Si ce n'est pas le cas on déclenche une erreur
        if(empty($user))
        {
            throw new DomainException('Identifiants incorrects');
        }
        
        // Vérifier si le MDP passé en paramètre est cohérent avec le MDP encrypté qu'on a trouvé dans la base (version encryptée du MDP saisi lors de la création de compte)
        
        // mot de passe encrypté de référence : $user['password']
        // mdp en clair dont on veut tester la validité : $password
        
        // Si ce n'est pas le cas on déclenche une erreur
        if (password_verify($password, $user['user_password']) == false)
        {
            throw new DomainException('Identifiants incorrects');
        }
        
        // Si on arrive jusqu'ici c'est qu'on a passé à la fonction des identifiants corrects.
        // On cherchera sans doute ensuite à créer une session PHP pour l'utilisateur connecté.
        // Notre fonction renverra donc les infos qu'on souhaite stocker en session : id (seule info obligatoire), nom et prénom (par confort, si on veut les afficher régulièrement)
        return [
            'id' => $user['user_id'],
            'pseudo' => $user['user_pseudo'],
            'is_admin' => $user['is_admin']
        ];
    }
    
}

