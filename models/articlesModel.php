<?php
/**
 * findAll()
 * findByRate()
 * findByDate()
 */
include_once 'UserModel.class.php';
include_once 'jeuxModel.php';

class Articles{
    private $db;
    private $user;
    private $game;

    public function __construct()
    {
        $this->db = new Database();
        $this->user = new UserModel();
        $this->game = new Jeux();
    }

    public function complet_info($list){
        foreach($list as $key=>$article){
            $list[$key]['user_pseudo'] = $this->user->findName($article['user_id']);
            $list[$key]['article_img'] = $this->game->findImg($article['jeux_id']);
        }

        return $list;
    }

    public function findAll()
    {
        $list_article = $this->db->query('SELECT * FROM articles ORDER BY `article_creation_date` DESC');
        return $this->complet_info($list_article);
    }

    public function findByGroup($group_id)
    {
        $list_article = $this->db->query('SELECT * FROM `articles` WHERE `groupe_id` = :group_id
            ORDER BY `article_creation_date` DESC',
            [
                ':group_id'   => $group_id
            ]
        );
        return $this->complet_info($list_article); 
    }

    /**
     * return one article by id
     *
     * @param integer $id_article
     * @return array
     */
    public function findOneArticle(int $id)
    {
        return $this->db->queryOne(
            'SELECT * FROM `articles` WHERE `article_id` = :id',
            [
                ':id'   => $id
            ]
        );
        
    }

    /**
     * return one article
     *
     * @param integer $id_article
     * @return array
     */
    public function findOne(int $id)
    {
        $article = $this->db->queryOne(
            'SELECT * FROM `articles` WHERE `group_id` = :id',
            [
                ':id'   => $id
            ]
        );
        return $this->complet_info($article); 
    }

    public function add( $article_title, $jeu_name, $article_content, $visible_by, $group_id, $user_id ) 
    {
        $this->db->executeSql(
            'INSERT INTO articles
            
            (article_title,
            jeux_id,
            article_content,
            visible_by,
            groupe_id,
            `user_id`,
            article_creation_date)
            VALUES
            (:article_title,
            :jeu_name,
            :article_content,
            :visible_by,
            :group_id,
            :user,
            NOW()
            )',
            [
                ':article_title' => $article_title,
                ':jeu_name' => $jeu_name,
                ':article_content' => $article_content,
                ':visible_by' => $visible_by,
                ':group_id' => $group_id,
                ':user' => $user_id
            ]
        );
    }

    public function update(int $article_id, string $article_title, string $article_content, int $jeux_id, int $visible_by){
        $this->db->executeSql('UPDATE `articles` 
        SET `article_title` = :article_title,
            `article_content` = :article_content,
            `jeux_id` = :jeux_id,
            `visible_by` = :visible_by
        WHERE `articles`.`article_id` = :article_id'
        ,
        [
            ':article_id' => $article_id,
            ':article_title' => $article_title,
            ':article_content' => $article_content,
            ':jeux_id' => $jeux_id,
            ':visible_by' => $visible_by
        ]
        );
    }
    public function delete(int $article_id){
        $this->db->executeSql('DELETE FROM `articles` 
        WHERE `articles`.`article_id` = :article_id'
        ,
        [
            ':article_id' => $article_id
        ]
        );
    }

}