<?php

class UserSession {
    
    public function __construct()
    {
        // Uniquement si la gestion des sessions n'a pas encore été démarrée, on la démarre
        if(session_status() == PHP_SESSION_NONE)
        {
            session_start();
        }
    }
    
    /**
     * Crée la session utilisateur
     * Entrée : tableau (qui contient les clés id, pseudo, is_admin)
     * Pas de sortie
     */
    public function create(array $userInfo) {
        if (
            array_key_exists('id', $userInfo) &&
            array_key_exists('pseudo', $userInfo) &&
            array_key_exists('is_admin', $userInfo)&&
            array_key_exists('group_id', $userInfo)
        )
        {
            $_SESSION['user'] = $userInfo;
        }
    }
    
    /**
     * "accesseurs" aux 4 infos de l'utilisateur en session
     */
    public function getId() {
        return $_SESSION['user']['id'];
    }
    public function getgetPseudo() {
        return $_SESSION['user']['pseudo'];
    }
    public function isAdmin() {
        return ($_SESSION['user']['id'] == '1');
    }
    public function groupId() {
        return $_SESSION['user']['group_id'];
    }
    
    /**
     * Efface la session utilisateur
     */
    public function destroy() {
        unset($_SESSION['user']);
    }
    
    /**
     * Vérifie si la session utilisateur existe
     * Sortie : booleen
     */
    public function sessionExists() : bool {
        return array_key_exists( 'user', $_SESSION);
    }
    
    
}