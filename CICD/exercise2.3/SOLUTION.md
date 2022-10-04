**Crear un nuevo repositorio, que contenga una pipeline, que clone otro proyecto, springapp anteriormente creado. Realizarlo de las siguientes maneras**

- Con el método de CI job permissions model
  
  - ¿Qué ocurre si el repo que estoy clonando no estoy cómo miembro?
  
  Si el usuario que lo crea está dentro de la lista de miembros que tiene visibilidad no hay ningún problema.
  
  Pero si el usuario que intenta clonar ese proyecto y no está en la lista de miembros no tiene acceso.

- Con el método deploy keys
  - Crear deploy key en el repo springapp y poner solo lectura
  - Crear pipeline que usando la deploy key

Para crear una deploy key es necesario crearse una par de claves primaria y pública con ssh-keygen para añadirlo a la configuración CICD del proyecto

En este apartado hay que añadir la clave privada SSH_PRIVATE_KEY

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-10-04-20-34-45-image.png)

Además se han añadido otras dos claces más.

    - SSH_PASSPHRASE: Contiene la frase que se le añade cuando se crea la clave ssh

    - SSH_KNOWN_HOSTS: Se trata de la clave públicadel host de nuestro runner

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-10-04-20-40-25-image.png)

Una vez tengamos añadidas las claves debemos añadir una nueva deploy key en la configuración del proyecto, con la clave pública que hemos creado anteriormete.

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-10-04-20-42-28-image.png)

En este apartado, como se indica en el enunciado del ejercicio dejamos desmarcada la casilla de permisos de escritura, para que solo tenga de lectura.



Una vez tengamos la configuraciones de contraseñas para el proyecto,  para poder crear una pipeline usando el deploy key debemos añadir un before_script antes de inciar los stages para aunteticar el proceso y poder lanzar dicha pipeline.

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-10-04-20-47-17-image.png)
