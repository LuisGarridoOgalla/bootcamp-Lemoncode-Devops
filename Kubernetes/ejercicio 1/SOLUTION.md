<sup> Ejercicio 1 </sup>

**MONOLITO EN MEMORIA**

Crear un deployment  con la imagen subida en docker hub 

* kubectl create deployment todo-app --image=luisgo/todo-app --replicas=1 --dry-run=client -o yaml | kubectl create -f -

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-09-06-18-21-00-image.png)

Revisar que está el deployment creado y nno ha habido ningún problema

* kubectl get deployment

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-09-06-18-22-13-image.png)

Revisar que se ha creado el número de pods que se han indicado (replicas) y ver que tienen un estado correcto

* kubectl get pod

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-09-06-18-24-06-image.png)

Crear un servicio de tipo LoadBalancer para que se pueda acceder al pod desde fuera del cluster

* kubectl expose deployment todo-app --type=LoadBalancer --port=8080 --target-port=3000

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-09-06-18-26-50-image.png)

Verificar que se ha creado el servicio correctamente

- kubectl get svc

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-09-06-18-27-54-image.png)

Se crea una ruta para los servicios desplegados de tipo LoadBalancer

* minikube tunnel

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-09-06-18-29-22-image.png)

* localhost:8080 (hacer una petición en el navegador)

![](C:\Users\luis.garridoogalla\AppData\Roaming\marktext\images\2022-09-06-18-30-41-image.png)
