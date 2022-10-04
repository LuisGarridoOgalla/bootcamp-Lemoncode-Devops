** CI/CD de una Java + Gradle****

- En el directorio raíz de este [código fuente](https://campus.lemoncode.net/jenkins-resources/calcultor), crea un `Jenkinsfile` que contenga un pipeline declarativa con los siguientes stages:
  
  - **Checkout** descarga de código desde un repositorio remoto, preferentemente utiliza GitHub.
  - **Compile** compilar el código fuente, para ello utilizar `gradlew compileJava`
  - **Unit Tests** ejecutar los test unitarios, para ello utilizar `gradlew test`

Se ha creado un repositorio en gitHub que contiene el proyecto indicado para poder crear y lanzar la pipeline desde jenkins el local

Repositorio : 

https://github.com/LuisGarridoOgalla/exercise1-lemoncode-CICD

El apartado de checkout se ha hecho en el paso cuando se crea una nueva pipeline se indica quee la pipeline su definición será por Pepeline script from SCM

![jenkins2](https://user-images.githubusercontent.com/22892039/193450329-455483f6-fc03-4c8a-bd69-94a384f00be7.png)


Donde indicaremos el repositorio de donde queremos coger el jenkinsFile, en qué ruta se encuentra y en qué rama se quiere lanzar la pipeline

![jenkins1](https://user-images.githubusercontent.com/22892039/193450345-c0bc47da-4e20-4034-869f-8b6c29ff3e0e.png)
