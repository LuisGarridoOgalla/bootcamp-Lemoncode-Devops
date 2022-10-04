**Crear un nuevo repositorio, que contenga una pipeline, que clone otro proyecto, springapp anteriormente creado. Realizarlo de las siguientes maneras**

- Con el método de CI job permissions model
  
  - ¿Qué ocurre si el repo que estoy clonando no estoy cómo miembro?
  
  Si el usuario que lo crea está dentro de la lista de miembros que tiene visibilidad no hay ningún problema.
  
  Pero si el usuario que intenta clonar ese proyecto y no está en la lista de miembros no tiene acceso.

- Con el método deploy keys
  - Crear deploy key en el repo springapp y poner solo lectura
  - Crear pipeline que usando la deploy key

Para crear una deploy key es necesario crearse una par de claves primaria y pública con ssh-keygen para añadirlo a la configuración CICD del proyecto como varaibles.


![clavesCICD](https://user-images.githubusercontent.com/22892039/193902979-63d554e1-b219-42b0-aefc-5050af811418.png)
    
    - SSH_PRIVATE_KEY: Clave privada generada
    
    - SSH_PASSPHRASE: Contiene la frase que se le añade cuando se crea la clave ssh

    - SSH_KNOWN_HOSTS: Se trata de la clave pública del host de nuestro runner

![clavehostrunner](https://user-images.githubusercontent.com/22892039/193903163-cf8acd9a-b471-4985-9f9d-16f25be8a425.png)


Añadidas las claves, debemos ingresar una nueva deploy key en la configuración del repositorio, con la clave pública que hemos creado anteriormete.

![deploykeysç](https://user-images.githubusercontent.com/22892039/193903231-eb5fcc73-8683-42bd-b8f5-3800c6ff5ec6.png)

En este apartado, como se indica en el enunciado del ejercicio, dejamos desmarcada la casilla de permisos de escritura, para que solo tenga de lectura.


Una vez tengamos la configuraciones de contraseñas para el proyecto,  para poder crear una pipeline usando el deploy key debemos añadir un before_script antes de inciar los stages para la autenticación ssh y que se pueda lanzar dicha pipeline.

![before_script](https://user-images.githubusercontent.com/22892039/193903417-b80a179d-ce04-48c0-b73e-d2627bfe13b4.png)

Se puede verificar que se ha podido lanzar una pipeline con autentificación ssh mediante deploy key.
![correctPipeline](https://user-images.githubusercontent.com/22892039/193903694-4f9e0f8f-05c5-41e0-b711-9d7459729faf.png)


