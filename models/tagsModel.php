<?php

class Tags{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function findAll()
    {
        return $this->db->query('SELECT * FROM `tags` ORDER BY `type` ASC');
    }

    public function findTypes(){
        $list = [];
        $foo = $this->db->query('SELECT `type` FROM `tags` ORDER BY `type` ASC');
            $i = 0;
            foreach($foo as $tag){
                if(empty($list[$i])){
                    if($i == 0){
                        $list[$i] = $tag['type'];
                        $i++;
                    }else if($list[$i-1] != $tag['type']){
                        $list[$i] = $tag['type'];
                        $i++;
                    }
                }
            }

        return $list;
    }

}