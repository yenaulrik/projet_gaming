'use strict';

/*********************************/
//            CORE
/*********************************/

$(function(){
    //alert('Site en construction, veuillez ne pas tenir rigueur des liens inactifs ou de la répétition des images ...  merci de votre soutient !')
    
    // si on click sur un lien on prend l'adress du lien et on vérifie 

    // OK // finir l'affichage du déroulant des tags lors du click dans le form=>tags

    /* TODO
        faire afficher la modal d'inscription au click sur le lien
        créer la prévisualisation de la banniere et sa transformation
    */

    let modal = $('#modal')
    let find = new Find()
    let tags = new Tags()

    //reset des variables sessionstorage & champs de recherche jeux
    if(sessionStorage.getItem("game_name")){sessionStorage.removeItem("game_name")}
    if(sessionStorage.getItem("tag_choice_list")){sessionStorage.removeItem("tag_choice_list")}
    $('#game_name').val("")
    

    // affichage modal
    $('#log').on('click', function(e){
        e.preventDefault()        
        modal.css('display','block')
    })
    //toggle du display onglet login
        $(".show_inscription").on('click', function(e){
            e.preventDefault()
            $('#connect').toggleClass("display-none")
            $('#inscription').toggleClass("display-none")
        }) 
    
    //affichage du menu user
    $('.menu-user').on('click', function(){$('#menu-user').toggleClass('display-none')})

    //détection de tous les clicks à l'écran
    $(window).on('click', function(e){
        //console.log(e.target)
        //fermeture modal
        if(e.target.id == "modal"){ modal.css('display','none')}

        //click jeu fonction recherche
        if(e.target.offsetParent.className == 'game-article'){
            find.selectGame(e.target.offsetParent.dataset['game'])
        }

    })
// si la page contient le formulaire de recherche
    if($('#form').length == 1){
        $('#game_name').on('input', function(){find.nameTyping(this.value), tags.disable()});
        $('#game_tag').on('click', function(){tags.showList(), $('#game_name').val("")});
        $('.tag-choice').on('click', function(e){tags.toggle(e.target), $('#game_name').val("")});
        //$('.tag-choice').on('click', function(e){tags.add(e.target), $('#game_name').val("")});
        //$('.tag-choice').on('click', function(e){tags.toggle(e.target), $('#game_name').val("")});
        //$('#game_tag').on('input', find.selectTag(this.value)); 
        // select a tag $('#game_name').on('input', nameTyping(this.value)); 
    }

// Affichage du menu burger :D

$( ".cross" ).hide();
$( ".menu" ).hide();

$( ".hamburger" ).click(function() {
    $( ".menu" ).slideToggle( "slow", function() {
        $( ".hamburger" ).hide();
        $( ".cross" ).show();
        });
    });

$( ".cross" ).click(function() {
    $( ".menu" ).slideToggle( "slow", function() {
        $( ".cross" ).hide();
        $( ".hamburger" ).show();
    });
});


})
