'use strict';
/*  TODO
    penser a vider le session quand le user sort de la page
    ou click sur un jeu direction => groupe
    vider la saisie si le user tape sur rechercher par tag
*/
class Find{
    
    constructor(link){
        this.mode
        this.lien_JeuController = location.pathname + 'controllers/Jeux/Jeu/JeuController.class.php'
        this.lien_jeuByGroupController = location.pathname + 'controllers/Jeux/Jeu/jeuByGroupController.class.php'
    }

    // SET STORAGE RECHERCHE PAR NOM
    nameTyping(value){
        this.mode = "nameTyping"
        sessionStorage.setItem("game_name", value)
        this.sendRequest(this.mode)
    }

    selectTag(){

    }

    // SET STORAGE CLICK GAME 
    selectGame(game_id){
        this.mode = "selectGame"
        sessionStorage.setItem("game_id", game_id)

        this.sendRequest(this.mode)
    }

    show(link){

        $('.dynamic-list').html(link)
    }

    sendRequest(mode){
        switch (mode) {
            case "selectGame" : 
            $.post(this.lien_jeuByGroupController,
                {
                    game_id: sessionStorage.getItem("game_id")                    
                },
                function(data){
                    $('.dynamic-list').html(data)
                });
                break;

            case "nameTyping":
                $.post(this.lien_JeuController,
                    {
                        game_name: sessionStorage.getItem("game_name")
                    },
                    function(data){
                        $('.dynamic-list').html(data)
                    });
                break;
        
            default:
                break;
        }
        
    }
}
