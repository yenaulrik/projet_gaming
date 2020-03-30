// cacher le surplus d'article dans carousel div 4 max
// css
// au click sur une fleche faire glisser les articles



/* slide_left.addEventListener('click', function(e){
    console.log('click gauche')
}) */

class Carousel{

    constructor(c){
        
        this.slideVisible = 4
        this.base = c
        this.articles = c.querySelectorAll('article')
        this.slide_left = c.querySelector('.slide-left')
        this.slide_right = c.querySelector('.slide-right')
        
        this.articleVisible = [0,1,2,3]

        

        for(let i = 0 ;  i < this.articles.length ; i++){
            if(i != this.articleVisible[i]){
                this.articles[i].classList.toggle("hidden")
            }
        }
        
    }// constructor

    clickLeft(){
        this.articleVisible.shift()
        if((this.articleVisible[this.articleVisible.length - 1] +1) == this.articles.length){
            this.articleVisible.push(0)
        }else{
            this.articleVisible.push(this.articleVisible[this.articleVisible.length - 1] +1)
        }
        this.show(this.articleVisible)
        console.log(this.articleVisible)
    }
    clickRight(){
        this.articleVisible.pop()
        if(this.articleVisible[0] == 0){
            this.articleVisible.unshift(this.articles.length -1)
        }else{
            this.articleVisible.unshift(this.articleVisible[0]-1)
        }
        this.show(this.articleVisible)
        console.log(this.articleVisible)
    }

    
    show(a){
        for(let i = 0 ; i < this.articles.length ; i++){
            if(a.includes(i)){
                //afficher
                if(this.articles[i].classList.contains('hidden')){
                    this.articles[i].classList.toggle('hidden')
                }
            }else{
                //cacher
                if(!this.articles[i].classList.contains('hidden')){
                    this.articles[i].classList.toggle('hidden')
                }
            }
            
        }
    }
}// class

let carousel_all = document.querySelectorAll('.carousel')
let carousel = []


$('document').ready(function(){

    for(let i = 0 ; i < carousel_all.length ; i++){
        carousel[i] = new Carousel(carousel_all[i])
        carousel[i].slide_left.addEventListener('click', function(){
            carousel[i].clickLeft()
        })
        carousel[i].slide_right.addEventListener('click', function(){
            carousel[i].clickRight()
        })
    }
});
