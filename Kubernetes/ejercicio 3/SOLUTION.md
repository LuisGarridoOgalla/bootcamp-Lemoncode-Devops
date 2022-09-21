<sup> Ejercicio 3</sup>

# Ingress

### Paso 1. Crear todo-front

- Se ha creado un deployment (deployment-front.yml) donde se indica que el pod tendrá la imagen todo-front
  
      kubectl create -f deployment-front.yml  

- Se ha creado un servicio de tipo clusterIP que expone todo-front
  
      kubectl expose deploy todo-front --port=80 --target-port=80

### Paso 2. Crear todo-api

- Se ha creado un deployment (deployment-api.yml) donde se indica que el pod tendrá la imagen todo-api
  
      kubectl create -f deployment-api.yml

- Se ha creado un servicio de tipo clusterIP que expone todo-api
  
      kubectl expose deploy todo-api --port=80 --target-port=3000

### Paso 3. Crear un Ingress para acceder a los servicios del clúster

- Se necesita habilitar en minikube el uso de ingress
  
      minikube addons enable ingress

- Se han creado 2 ficheros ingress (para todo front y todo api) en los cuales se le indica el puerto por el cual se va a comunicar con el servicio clusterIP creado y con el host por el cual se le puede hacer la petición.
  
      kubectl create -f ingress-todo-api.yml
      kubectl create -f ingress-todo-front.yml

- Se debe obtener la ip que han tomado los ingress para ponerlas en el host de windows y poder realizar la petición en algún navegador a través de ese host
  
      kubectl get ingress
