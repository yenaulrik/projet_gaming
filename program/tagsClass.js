'use strict';

class Tags{
    
    constructor(){

        this.lien_JeuController = location.pathname + 'controllers/Jeux/Jeu/JeuController.class.php'
        this.lien_jeuByGroupController = location.pathname + 'controllers/Jeux/Jeu/jeuByGroupController.class.php'

        this.section_tag = $('.show-tags')
        this.tag_choice_list = []
        this.croix = '<i class="fas fa-times"></i>'
        this.tab = []
    }
    showList(){
        console.log('click dans la zone "tags"')
        this.section_tag.addClass("animate-top")
        this.section_tag.css('display','block')
    }
    disable(){
        this.section_tag.css('display','none')
        
    }
    toggle(e){
        
        let link = '#' + e.dataset['parent']

        console.log('parent : ' + e.parentElement.id)
        console.log('dataset parent : ' + e.dataset['parent'])

        if(e.parentElement.id == e.dataset['parent']){
            console.log('ADD')
            this.tag_choice_list.push(e.dataset['tagid'])
            sessionStorage.setItem("tag_choice_list", JSON.stringify(this.tag_choice_list))

            //envoie du tag en selection
            $('#picked-tags').append(e)
            
        }else{
            console.log('DELETE')
            
            
            for(let i = 0 ; i < this.tag_choice_list.length ; i++){
                if(this.tag_choice_list[i] != e.dataset['tagid']){
                    this.tab.push(this.tag_choice_list[i])
                }
            }
            this.tag_choice_list = this.tab
            this.tab = []
            //sessionStorage.setItem("tag_choice_list", JSON.stringify(this.tag_choice_list))
            //console.log(this.tag_choice_list)
            //retour du tag à la maison
            $(link).append(e)
        }
        this.sendRequest(this.tag_choice_list)
    }

    sendRequest(tags){


        $.post(this.lien_JeuController,
            {
                tags_list: tags
            },
            function(data){
                $('.carousel').html(data)
            });






    }    
}   
