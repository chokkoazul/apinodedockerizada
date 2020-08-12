# apinodedockerizada

Probar app NO dockerizada

 1 - Instalar dependencias de app
 
     npm install

 2 - Levantar app
 
     npm start

 3 - Probar endpoint
 
     curl http://localhost:8080/status


Probar app dockerizada

  1 - Crear imagen
  
     docker build -t nodedockerizado .

  2 - Ejecutar contenedor docker con imagen creada
 
     docker run -p 8080:8080 nodedockerizado

  3 - Probar endpoint
 
     curl http://localhost:8080/status
