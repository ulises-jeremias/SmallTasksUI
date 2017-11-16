# SmallTasksTwitter User Interface

SmallTasksTwitterUI es una aplicación web diseñada para la creación de pipelines de procesamiento de transmisión de tweets con diferentes tareas.

Para lograr esto, SmallTasksTwitterUI utiliza [SmallTasksToolkit](https://github.com/ulises-jeremias/SmallTasksToolkit). Este último es un framework para la construcción de pipelines interactivas en la web. Este depende de seaside y bootstrap.

## SmallTasksToolkit

Es un framework que implementa interfaces de usuario para trabajar de forma interactiva al momento de crear pipelines. El mismo extiende de [SmallTasks](https://github.com/SmallTasksFramework/SmallTasks) y [SmallTasksTwitter](https://github.com/SmallTasksFramework/SmallTasksTwitter), permitiendo la aplicación de distintas tareas a un transmisión de tweets determinada.

### Configuración

La interfaz es simple y sencilla de utilizar. A continuación se muestra una guía rápida para empezar a configurar los pipelines.

Lo primero que se ve al entrar a la interfaz es el listado de tareas a seleccionar:

![Select a Task](https://i.imgur.com/3MvbxFL.png)

Por cada tarea se puede ver su nombre y una opción la cual permite agregar dicha tarea a un pipeline. Luego de ser agregadas, las mismas requerirán una configuración, pero esto se explica más adelante.

#### Tareas

Las tareas que proveé el freamework son las siguiente:

- **File Reporter Task**
Esta tarea permite persistir cualquier dato en un archivo. La configuración del tipo de archivo y nombre se explica más adelante. En resumen, el framework proveé las siguientes extensiones.
    - STON
    - FUEL
    - TXT
    - ZIP

- **Filter Task**
Esta tarea permite filtrar datos a partir de un criterio dado. Permite comparar un campo del dato de entrada con algun valor configurado, a partir de un criterio cuya configuración se plantea más adelante. En resumen, los criterios a aplicar son de la forma:
    > <campo a evaluar> <operacion> <valor>

    Donde la operacion es alguna de las siguientes:
            
    - \>
    - \>=
    - =
    - <=
    - <
    
- **Mapper Task**
Esta tarea permite transformar un dato en otro. Permite mapear un objeto de entrada a otro, a partir de un transformador cuya configuración se plantea más adelante. En resumen, los transformadores a aplicar son de la forma:
    > <Dato de Entrada> to <Dato Salida>

    Por ejemplo, supongamos que al mapper le llega un Tweet y queremos que nos devuelva un Componente Renderizable a partir de ese tweet, luego el transformador a elegir será:
    
    > Tweet to Seaside Component
    
    Dado el caso de que una tarea de mapeo sea incompatible, la misma devolverá el objeto de entrada.
    
- **Rendering Task**
Como se mencionó antes, un dato de entrada puede ser mapeado a un componente renderizable. Para que estos se muestren en un output, deberá incluirse esta tarea en el pipeline. La misma no necesita ser configurada, y como salida enviará el componente de entrada.

    A continuación, se muestra un ejemplo de como quedaría un pipeline de este tipo:
    
    ![Pipeline Example](https://i.imgur.com/ka0MzBw.png)
    
- **Translator Task**
Esta tarea permite traducir el texto de un objeto de entrada, devolviendo así, el objeto con su texto traducido. El mismo permite unicamente recibir un tweet, dado que por ejemplo, un usuario, no dispone de un texto a ser traducido.

#### Pipelines

El framework permite configurar multiples pipelines a ser aplicados al mismo tiempo en cada uno de los tweets que llegan. En esta sección se habla de las configuraciones básicas a tener en cuenta para el funcionamiento de la aplicación.

![Settings](https://i.imgur.com/ruufNvL.png)

Por encima del pipeline se pueden ver 5 botones:

1.  **Configurar hashtag**
Permite configurar el hashtag del cual se descargarán tweets.

2.  **Derecha / Izquierda**
Permite cambiar de pipelines. Como se dijo anteriormente, se pueden configurar varios pipelines. Una vez agregado uno, una nueva configuración estará disponible. Si se desea modificar alguno de los ya guardados, estos botones pueden ser la solución.

3. **Limpiar configuración**
Este boton es muy importante para la liberación de la memoria. Permite borrar todos los componentes que quedan guardados, y a su vez, los pipelines viejos. Se persisten estos datos, dado que una persona podria querer modificar un pipeline que utilizó anteriormente, para poder así utilizarlo una vez más. Este boton permite borrar dichas configuraciones.

4. **Agregar pipeline**
Una vez configurado un pipeline, podrá guardarse para comenzar a crear uno nuevo. Es importante saber que, si un pipeline no se guarda con dicha opción, el mismo no tendrá lugar durante la descarga de tweets. Al lado del boton, puede ver la cantidad de pipelines ya agregados.

Por último, el botón Run Pipeline permite empezar la descarga de tweet y aplicar los pipelines.

### Ejecución

En la interfaz de ejecución pueden verse algunas opciones y, en caso de haber componentes renderizables, un listado de las mismas. Es importante saber que, dada la ausencia de estas componentes, no se mostrará ningun listado. En su lugar se mostrará un mensaje informando esto.

Además, en esta sección se cuenta con alguna opciones.

![Options](https://i.imgur.com/4QKNSAK.png)

1.  **Ver errores de renderizado**
Permite ver si existen errores en el pipeline.

2.  **Volver a configurar**
Permite configurar nuevamente el pipeline, o crear uno nuevo si así se desea.

3.  **Play / Pause**
Permite pausar o reanudar la descarga de tweets.

4.  **Refrescar vista**
Permite refrescar el listado de componentes renderizados.

5. **Limpiar lista**
Limpia la lista de componentes. A su derecha se muestra la cantidad de componentes almacenados.

A continuación se muestra un ejemplo de la salida del pipeline.

![Output example](https://i.imgur.com/BxTzGme.png)

En caso de existir un error, la misma se vería así:

![Error handler example](https://i.imgur.com/VAZ1YSp.png)
