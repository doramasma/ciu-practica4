# Ciu práctica 4
Solar System & camera

## Autor 
**Doramas Báez Bernal** <br/>
Correo: doramas.baez101@alu.ulpgc.es

## Gif
<div align="center">
  <img src="/solarSystem.gif" alt="gif de la practica 4">
  <p align="center">
    Figura 1: Ejemplo de ejecucion
  </p>
</div>

## Índice
* [Introducción](#introducción)
* [Dependencias](#dependencias) 
* [Desarrollo](#desarrollo)
    * [Información general](#informaciónGeneral)
    * [Distintas vistas](#vistas)
    * [Texturas](#texturas)
* [Referencias](#referencias)

## Introducción
El objetivo de esta práctica es a partir del sistema planetario desarrollado anteriormente, diseñar una nave que de forma interactiva pueda navegar por dicho sistema planetario. Dicha navegación podrá afectar no únicamente a la posición de la nave, sino también a la
vertical y punto al que se mira desde ella, influyendo por tanto en su definición de cámara. El prototipo final debe permitir que se alterne entre una vista general y la vista desde
la nave.


## Dependencias
Para poder poner un background estático en la aplicacion, dicho background tiene que tener la misma dimensionalidad que la resolucion de la pantalla. En este caso, se ha utilizado una imagen de 1920x1080 (hd estandar). De no disponer, de una pantalla de estas dimesionalidades, para poder ejecutar la aplicacion es necesario modificar el background --> poniendolo a 0. 


## Desarrollo

### Información general <a id="informaciónGeneral"></a>

Cuando iniciamos la aplicación, aparecerá la vista principal, en la que se nos explicarán los controles. En este caso, disponemos de los siguientes controles:
 - W: vertical Y -
 - S: Vertical Y +
 - A: Vertical X -
 - D: Vertical X +
 - Q: Vertical Z +
 - E: Vertical Z -
 - R: cambiar entre las distintas vistas
 - Enter: Cambiar entre modo pausa y modo resume 
 - Mouse: Rotar el ángulo de la camara (Cuando estamos en modo tercera persona)
 

### Distintas vistas <a id="vistas"></a>
Podemos cambiar entre las 3 vistas que disponemos, estas son:
 - Intrucciones: es la primera vista que aparece, podremos salir o cambiar a ella, utilizando la tecla enter
 - Vista general: Es una vista general, con una camara alejada para poder tener una visión de todo el sistema solar.
 - Vista en tercera persona: Esta es una vista donde la camará se situará detras de la nave (esta es un cubo). Además, se nos permitirá realizar una rotacion reducida de unos 180 grados.

### Textura <a id="texturas"></a>
Para este proyecto, se ha intentado realizar una replica del sistema solar. Para ello, se han intentado mantener las proporciones que se reflejan en la actualidad. Además, se han tomado las texturas que se asemejan a la realidad. Podremos encontrar dicho enlace en las referencias.

## Referencias

* [Guion de prácticas](https://cv-aep.ulpgc.es/cv/ulpgctp20/pluginfile.php/126724/mod_resource/content/22/CIU_Pr_cticas.pdf)
* [Programa para la grabación del gif](https://obsproject.com/es)
* [Texturas](https://www.solarsystemscope.com/textures/)
* [Flaticon](https://www.flaticon.com/free-icon/mouse-left-button_32041?term=mouse%20left&page=1&position=32)
* [Adobe xd](https://www.adobe.com/es/products/xd.html)
