<sup> Ejercicio 2</sup>

**MONOLITO**

### Paso 1. Crear una capa de persistencia de datos

- Se ha creado una storeClass (sc.yml) de tipo standard que es la que permite minikube
  
      kubectl apply -f sc.yml  

- Se ha creado el fichero satetefulset. yml  (statefulset) donde indicamos el numero de replicas que queremos tener de los pod y la imagen que van a conterner dichos pods. Además, se crea un persistenceVolume que hace referencia al storegeClass que se ha creado.
  
       kubectl apply -f statefulset.yml

- Se ha creado un servicio de tipo ClusterIP para que se puedan comunicar los pods dentro del cluster
  
      kubectl apply -f svc.yml

- Una vez creado el statefulSet se han introducido los datos en la BBDD que tenemos del pod de postgres que se ha creado
  
       kubectl exec [postgres-pod-name] -it bash
      
       psql -U postgres
      
       Se ha copiado el fichero todos_db.sql

### Paso 2. Crear todo-app

- Se ha creado un configmap (cm-todo-app.yml) el cual tiene la configuración de BBDD que se ha creado anteriormente en el statefulset y que lo necesitará el deployment que se hará de todo-app
  
      kubectl apply -f cm-todo-app.yml

- Se ha creado un deployment ( deployment-todo-app.yml) que despliega un pod con la imagen todo-app
  
      kubectl apply -f deployment-todo-app.yml

### Paso 3 . Acceder a todo-app desde fuera del clúster

- Se ha creado un service de tipo loadBalancer para acceder al deployment que se ha creado de todo-app
  
      kubectl expose deployment todo-app --type=LoadBalancer --port=8080 --target-port=3000

- Se ha creado una ruta para los servicios desplegados de tipo LoadBalancer 
  
      minikube tunnel
