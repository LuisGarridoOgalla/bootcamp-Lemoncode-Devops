**Crear un usuario nuevo y probar que no puede acceder al proyecto anteriormente creado**

- Añadirlo con el role `guest`, comprobar que acciones puede hacer.

- Cambiar a role `reporter`, comprobar que acciones puede hacer.

- Cambiar a role `developer`, comprobar que acciones puede hacer.

- Cambiar a role `maintainer`, comprobar que acciones puede hacer.

- **Nota** (acciones a probar):

- Commit
- Ejecutar pipeline manualmente
- Push and pull del repo
- Merge request
- Acceder a la administración del repo



**Usuario guest:**

· Commint  ->  no tiene permiso

· Ejecutar pipeline manual ->  No tiene permiso

· Push and pull al repo ->  No tiene permiso

· Merge request -> No tiene permiso

· Acceder a la administración del repo -> No tiene permiso



**Usuario reporter:**

· Commint -> No tiene permiso

· Ejecutar pipeline manual -> No tiene permiso

· Push and pull al repo -> No tiene permiso

· Merge request -> Permiso de revisor y puede
    ver el listado de merges requests pendientes, pero no puede aprobarlas.

· Acceder a la administración del repo ->  No tiene acceso



**Usuario developer:**

· Commint -> Si tiene permiso

· Ejecutar pipeline manual -> Si tiene permiso

· Push and pull al repo ->tiene permiso

· Merge request -> Permisos de revisor,  puede ver
listado de merges request pendiente, solicitar merge request para aplicar
cambios, aprobarlas, asignarlas, crearlas.

· Acceder a la administración del repo -> No tiene permiso



**Usuario mantainer:**

· Commint -> Si tiene permiso

· Ejecutar pipeline manual -> Si tiene permiso

· Push and pull al repo -> Si tiene permiso

· Merge request -> Todos los permisos que tiene el perfil develop y además puede configurar las reglas para aprobar una merge request

· Acceder a la administración del repo -> si tiene accesso
