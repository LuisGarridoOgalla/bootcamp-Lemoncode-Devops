<sup> Ejercicio 1 </sup>

**MONOLITO EN MEMORIA**

Crear un deployment con la imagen subida en docker hub

- kubectl create deployment todo-app --image=luisgo/todo-app --replicas=1 --dry-run=client -o yaml | kubectl create -f -

![2022-09-06-18-21-00-image](https://user-images.githubusercontent.com/22892039/188695269-58bb33f8-4b78-42bb-91b7-f1b726f70b44.png)


Revisar que está el deployment creado y nno ha habido ningún problema

- kubectl get deployment

![2022-09-06-18-22-13-image](https://user-images.githubusercontent.com/22892039/188695352-f14d6d37-2703-43af-aa21-2b8b71149166.png)


Revisar que se ha creado el número de pods que se han indicado (replicas) y ver que tienen un estado correcto

- kubectl get pod

![2022-09-06-18-24-06-image](https://user-images.githubusercontent.com/22892039/188695436-b5b374e1-d9ed-4ab6-a99a-e8165963d756.png)


Crear un servicio de tipo LoadBalancer para que se pueda acceder al pod desde fuera del cluster

- kubectl expose deployment todo-app --type=LoadBalancer --port=8080 --target-port=3000

![2022-09-06-18-26-50-image](https://user-images.githubusercontent.com/22892039/188695481-2e9fb496-fe85-4fc3-8638-3ed1584c0f37.png)


Verificar que se ha creado el servicio correctamente

- kubectl get svc

![2022-09-06-18-27-54-image](https://user-images.githubusercontent.com/22892039/188695517-758e42af-1d07-4105-ad34-22008d4f7ec4.png)


Se crea una ruta para los servicios desplegados de tipo LoadBalancer

- minikube tunnel

![2022-09-06-18-29-10-image](https://user-images.githubusercontent.com/22892039/188695559-924ab0a1-4ad0-4eb8-acd8-02470a8874a0.png)


- localhost:8080 (hacer una petición en el navegador)

![2022-09-06-18-30-41-image](https://user-images.githubusercontent.com/22892039/188695611-e429f545-97bd-414e-9729-17276250e829.png)
