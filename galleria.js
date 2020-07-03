function gestoreClickAvanti () {
      cambiaFoto(+1);
}

function gestoreClickIndietro () {
      cambiaFoto(-1);
}

function cambiaFoto (x) {
   indiceFoto += x;
   if (indiceFoto == NUMERO_FOTO) {
      indiceFoto = 0;
   }
   if (indiceFoto < 0) {
   indiceFoto = NUMERO_FOTO-1;
   }
   nodoFoto.setAttribute("src", galleria[indiceFoto]);
}

function rimuoviFigli(nodo) {
  while (nodo.childNodes.length > 0) {
    nodo.removeChild(nodo.firstChild);
  }
}

const NUMERO_FOTO = 4;
const RITARDO = 1500;
var galleria = ["immagini/7694-090F.jpg", "immagini/7694-090R.jpg", "immagini/7694-136F.jpg", "immagini/7694-136R.jpg"];
var indiceFoto;
var nodoAvanti;
var nodoIndietro;
var nodoFoto;

function gestoreLoad(){
    try {
        nodoAvanti = document.getElementById("avanti");
        nodoIndietro = document.getElementById("indietro");
        nodoFoto = document.getElementById("foto");
        nodoAvanti.onclick = gestoreClickAvanti;
        nodoIndietro.onclick = gestoreClickIndietro;
        indiceFoto = 0;
        cambiaFoto(0);
    } catch (e) {
        alert("gestoreLoad "+e)
    }
}

window.onload=gestoreLoad;