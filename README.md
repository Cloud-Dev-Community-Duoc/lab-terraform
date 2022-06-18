# Lab TerraForm
Este Lab tiene por objetivo enseñar el uso de Terraform, esta especificamente diseñado para ser usado en el [Learning LAB de AWS](https://www.awsacademy.com/LMS_Login), aunque su usoi no se restringue para usarlo en plataformas productivas o de aprendizaje propio si se desea.

## Modo de Uso

Dentro de directorio "01"

* Ingresar al LAB de AWS iniciar el LAB "AWS Academy Learner Lab - Foundation Services"
* Seleccionar "Modules"
* Elegir "Learner Lab - Foundational Services"
* En la parte superior derecha iniciar el LAB con la opcion Start LAB
* Una vez iniciado el LAB en la parte derecha aparecen los datos de conexion estos seran necesarios para usar en este codigo de terraform.
* Ingresar al directorio "01"
* modificar los datos de "terraform.tfvars", con los entregados en el LAB de AWS
* Descargaremos la llave vockey que nos facilita el LAB y la dejaremos dentro del directorio "keys"
* Descargamos el binario para nuestro sistema operativo de terraform en la pagina https://www.terraform.io/downloads
* Ejecutamos terraform init
``terraform init``
    Esto descargara los paquetes necesario para conectarse a la nube de AWS y permitira a terraform utilizar la API
* Ejecutamos terraform plan
``terraform plan``
    Esto hara que nos muestre el plan a ejecutar lo que va desplegar y construir dentro de nuestra nube.
* Si esta todo correcto ejecutaremos terraform apply
``terraform apply``
    En este proceso nos pedira la confirmacion indicando "yes"
* Una vez generado esperaremos un par de minutos y estara creada nuestra infraestructura

### Links de Interes
- terraform.io