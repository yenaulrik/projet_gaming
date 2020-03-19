<?php
class GestionnaireFichiers{

    private $dir_img;
    private $file_tmp_name;
    private $file_tmp_file_name;
    private $file_type;
    private $error_msg;

    public function __construct()
    {
        
        
    }

    public function upload(string $type_dir, $file){


        switch($type_dir){
            case 'group' : $this->dir_img = IMG_PATH . "group/";
            break;
        }

        $this->file_tmp_name = $file['tmp_name'];
        // verifier que le fichier se trouve bien dans le dossier tmp
        if( !is_uploaded_file($this->file_tmp_name) )
            {
                $this->error_msg = ("Le fichier n'a pas été upload correctement");
                return ['error' => $this->error_msg];
            }
        
        // vérifier que le fichier a la bonne extantion
        $this->file_type = $file['type'];
        if( !strstr($this->file_type, 'jpg') &&
            !strstr($this->file_type, 'jpeg') && 
            !strstr($this->file_type, 'png') )
            {
                $this->error_msg = ("Le fichier n'est pas une image .jpg , .jpeg ou .png");
                return ['error' => $this->error_msg];
            }
        
        // vérification de l'écriture du nom de l'image et crypte pour nom
        $this->file_tmp_file_name = str_replace([' ', '.'], '',microtime()) . $file['name'];
        
        if( preg_match('#[\x00-\x1F\x7F-\x9F/\\\\]#', $this->file_tmp_file_name) )
        {
            $this->error_msg = ("Impossible de copier l'image dans $this->dir_img nom incorrect => $this->file_tmp_file_name");
            return ['error' => $this->error_msg];
        
        // test d'envoie
        }elseif( !move_uploaded_file($this->file_tmp_name, $this->dir_img . $this->file_tmp_file_name) )
            {
                $this->error_msg = ("Impossible de copier l'image dans $this->dir_img");
                return ['error' => $this->error_msg];
            }
        return [
                'error' => false,
                'img_name' => $this->file_tmp_file_name
                ];

        // return un tableau d'informations et / ou une erreur
        // si une erreur alors rep['error'] aura l'info
        // si pas d'erreur rep['erreur'] == false
    }
}