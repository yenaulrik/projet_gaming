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
    public function findByName(string $name)
    {
        return $this->db->queryOne(
            'SELECT * FROM `groups` WHERE `group_title` = :name',
            [
                ':name'   => $name
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

    public function addGameForGroup(int $group, array $jeux){
        foreach($jeux as $jeuId){
            $this->db->executeSql(
                'INSERT INTO game_by_group
                (group_id, game_id)
                VALUES
                (:group_id,:game_id)',
                [
                    ':group_id' => $group,
                    ':game_id' => $jeuId
                ]
            );
        }
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

    /**
     * Undocumented function
     *
     * @param [type] $first_name
     * @param [type] $last_name
     * @param [type] $pseudo
     * @param [type] $email
     * @param [type] $password
     * @return void
     */
    public function add( $group_creator_id, $group_title, $group_description, $group_img = '' ) 
    {
        if($group_img == ''){
            $group_img = "no-images.png";
        }

        $this->db->executeSql(
            'INSERT INTO groups
            
            (group_creator_id,group_title,group_description,group_img,group_created_at)
            VALUES
            (:group_creator_id,:group_title,:group_description,:group_img,NOW() )',
            [
                ':group_creator_id' => $group_creator_id,
                ':group_title' => $group_title,
                ':group_description' => $group_description,
                ':group_img' => $group_img
            ]
        );
    }
}