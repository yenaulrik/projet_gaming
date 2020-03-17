<?php
/**
 * findAll()
 * findByRate()
 * findByDate()
 */
class Group{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    /**
     * retourne tous les groupes
     *
     * @return void
     */
    public function findAll()
    {
        return $this->db->query('SELECT * FROM groups');
    }

    /**
     * retourn tous les groupes triés par rate
     *
     * @return array
     */
    public function findByRate()
    {
        return $this->db->query('SELECT * FROM `groups` ORDER BY `group_rate` DESC');
    }

    /**
     * retourn tous les groupes triés par date de creation
     *
     * @return array
     */
    public function findByDate()
    {
        return $this->db->query('SELECT * FROM `groups` ORDER BY `group_created_at` DESC');
    }

    /**
     * Retour les infos d'un groupe par son ID
     *
     * @param integer $id
     * @return array
     */
    public function findOne(int $id)
    {
        return $this->db->queryOne(
            'SELECT * FROM `groups` WHERE `group_id` = :id',
            [
                ':id'   => $id
            ]
        );
    }

    public function findGameOfGroup(int $id){
        return $this->db->query(
            "SELECT `jeu_title`, `jeu_id` FROM `jeux` 
            INNER JOIN `game_by_group` ON game_by_group.game_id = jeux.jeu_id
            WHERE group_id = :id",[
                ':id' => $id
            ]
        );
    }

    /**
     * return groups liés à un jeu par l'ID du jeu
     *
     * @param integer $id _game
     * @return array
     */
    public function findByGame(int $id){
        return $this->db->query(
            "SELECT * FROM `game_by_group` 
            INNER JOIN `groups` ON groups.group_id = game_by_group.group_id 
            WHERE game_id = :id",[
                ':id' => $id
            ]
        );
    }

}