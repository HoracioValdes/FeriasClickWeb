/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//Este nos sirve para tirar un mensaje cuando la pagina esta cargada
//window.addEventListener("load", function (){
//    alert("Cargado"); 
//});

window.addEventListener('load', function (){
    document.getElementById('btninciar').addEventListener('click', function (){
          var nombre = document.getElementById('txtNom_usuario').value;
          var clave = document.getElementById('txtClave').value;
          
          var bandera = false;
          //Se revisa que la caja de dato no esta vacia
          if(nombre.length > 0 && clave.length >0){
              //Si no estan vacia se paso a true la variable
              bandera = true;
          }
          
          if (bandera){
              document.getElementById('formingresar').submit();
          }else{
              alert('Por favor rellene todos los campos')
          }
    });
    
});