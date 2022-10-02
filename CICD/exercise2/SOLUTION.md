**CI/CD de una aplicación spring****

- Crea un nuevo proyecto en GitLab y un repositorio en el mismo, para la aplicación `springapp`. El código fuente de la misma lo puedes encontrar en este [enlace](https://campus.lemoncode.net/02-gitlab/springapp).

- Sube el código al repositorio recientemente creado en GitLab.

- Crea una pipeline con los siguientes stages:

- maven:build - En este `stage` el código de la aplicación se compila con [maven](https://maven.apache.org/).

- maven:test - En este `stage` ejecutamos los tests utilizando [maven](https://maven.apache.org/).

- docker:build - En este `stage` generamos una nueva imagen de Docker a partir del Dockerfile suministrado en el raíz del proyecto.

- deploy - En este `stage` utilizamos la imagen anteriormente creada, y la hacemos correr en nuestro local

Se ha creado en gitLab un grupo, dentro se ha creado un repositorio público donde se ha subido el proyecto indicado y se han seguido los pasos que se piden para crear un pipeline.

https://gitlab.com/lemoncode-exercise2/springapp
