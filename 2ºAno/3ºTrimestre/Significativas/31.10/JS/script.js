var imgAtual = "./img/porshe-azul.png";
var img2 = "./img/porshe-vermelha.png";
var img3 = "./img/porshe-amarela.png";
var img4 = "./img/porshe-branca.png";
var img5 = "./img/porshe-preta.png";
function mudarCorDeFundo() {

    // Verifica a cor atual da div e alterna entre azul e vermelho

    if (background.style.backgroundColor === "blue") {

      background.style.transition = "background-color 0.2s";

       background.style.backgroundColor = "red";
    }

    else if(background.style.backgroundColor === "red"){
        background.style.transition = "background-color 0.2s";

        background.style.backgroundColor = "yellow";

    }
    else if(background.style.backgroundColor === "yellow"){
        background.style.transition = "background-color 0.2s";

        background.style.backgroundColor = "white";

    }
    else if(background.style.backgroundColor === "white"){
        background.style.transition = "background-color 0.2s";

        background.style.backgroundColor = "black";
    }

     else {

      background.style.transition = "background-color 0.2s";

      background.style.backgroundColor = "blue";

    }
    document.getElementById("imagemporshe").src = imgAtual;
    let aux = imgAtual;
    imgAtual = img2;
    img2 = img3
    img3 = img4
    img4 = img5
    img5 = aux;

    
}
  