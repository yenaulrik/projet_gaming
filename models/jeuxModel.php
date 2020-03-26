<?php

    class Jeux{
        private $db;
    
        public function __construct()
        {
            $this->db = new Database();
        }
    
        public function findByName(string $name){
            return $this->db->query('SELECT * FROM `jeux` WHERE `jeu_title` LIKE :jeu_title', [
                ':jeu_title' => '%' . $name . '%'
                ] );
        }
    
        public function findAll()
        {
            return $this->db->query('SELECT * FROM jeux');
        }
        /**
         * find all game by 
         *
         * @return array
         */
        public function findByRate()
        {
            return $this->db->query('SELECT * FROM `jeux` ORDER BY `jeu_rate` DESC');
        }
    
        public function findOne(int $id)
        {
            return $this->db->queryOne(
                'SELECT * FROM `jeux` WHERE `jeu_id` = :id',
                [
                    ':id'   => $id
                ]
            );
        }
        public function findImg(int $id)
        {
            $jeu_img = $this->db->queryOne(
                'SELECT `jeu_img` FROM `jeux` WHERE `jeu_id` = :id',
                [
                    ':id'   => $id
                ]
            );
            return $jeu_img['jeu_img'];
        }
    
        public function findByTag( $id){
            $size = sizeof($id) - 1;
    
            $requete = "SELECT * FROM `tag_by_game` INNER JOIN `jeux` ON jeux.jeu_id = tag_by_game.game_id WHERE ";
            $tableau = [] ;
    
            foreach($id as $key=>$tag_id){
    
                $requete .= "tag_id = :tag" ;
                $requete .= strval($tag_id) ;
                if($key < $size){
                    $requete .= " OR ";
                }
            }
    
            foreach($id as $tag_id){
                
                $tableau += [':tag'.$tag_id => intval($tag_id)];
                
            }
            
            return $this->db->query( $requete,$tableau );
        }
    
    }
