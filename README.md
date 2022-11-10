# ProyectoHenry-III-DATA 04
## Axel Moriena - PI-03- Data Analytics

![image](https://user-images.githubusercontent.com/103937102/199312063-47a110ed-832d-4745-aced-7df92051e94d.png)

## Proyecto individual 3
A continuación mostraré mi tercer proyecto individual en la carrera de Data Science en Soy Henry.

![image](https://user-images.githubusercontent.com/103937102/200990834-5461ee69-cde1-4b81-b73a-d521f56a2773.png)

### Contexto
La Organización de Aviación Civil Internacional (OACI), organismo de la Organización de las Naciones Unidas, quiere investigar en profundidad los accidentes producidos desde inicios del siglo XX. Para ello, les solicita la elaboración de un informe y un dashboard interactivo que recopile tal información.

La OACI únicamente cuenta con un dataset sobre datos de accidentes de aviones, pero insta a la consultora de datos -de la que forman parte- que intente cruzar esta información con otras fuentes de su interés. Esto con el objetivo de obtener mayor claridad y consistencia en los fundamentos del estudio.

### Propuesta de trabajo
A raíz de esta solicitud, nuestro Project Manager nos encarga una serie de tareas a cumplir:

Realizar un EDA con el dataset provisto, junto con un reporte de calidad y diccionario de datos
Buscar y relacionar información relevante con los eventos
Crear una base de datos en un motor SQL e ingestar el csv procesado
Elaborar un dashboard e idear un storytelling con el objetivo de presentarlo ante la OACI
Adjuntar todo el trabajo en un repositorio de GitHub

A modo de resumen, se espera que puedan realizar un primer acercamiento al dataset con Python. Allí, crearán un notebook que contendrá un análisis exploratorio y realizarán las transformaciones y el preprocesamiento que consideren pertinentes. Esta etapa debe estar oportunamente documentada y con los comentarios necesarios. Recuerden que Python brinda un recurso muy valioso para este fin -celdas markdown-.

En una instancia posterior, tendrán que ingestar el dataset en un motor SQL de su preferencia. Finalmente, la herramienta de visualización empleada debe conectarse y tomar los datos desde ese motor.

## Stack tecnológico usado:

* *Python:* EDA + transformaciones + importaciones de datasets adicionales.
* *SQL:* base de datos (carga y exportación) Utilizando MySQL
* *Power BI:* Para la realización de dashboard y presentación frente a mentor.
* *GitHub:* Un repositorio con los archivos involucrados y con el README.md donde se elabora el informe.

## Reporte de calidad
El dataset provisto contiene muchos datos faltantes, la mayoría conteniendo un signo de pregunta ("?"), por lo que de esta manera Python no los considera como datos nulos. Con algunos outliers, escasos datos y la obligación de conseguir, al menos otro dataset complementario para realizar el análisis pertinente.
Con esa información extra y el "csv" provisto se debía realizar un proceso de Data Analytics, desde la limpieza y normalización de los datasets utilizados, importarlos y cargarlos a un motor de  base de datos SQL y desde allí importarlo a Power Bi para la realización de un dashboard con las conclusiones oportunas. Luego, se deberá presentar con un mentor de Henry en una reunión virtual de 15 minutos, con no más de 10 minutos para realizar la exposición. Debiendo para ello realizar un Storytelling apropiado.

## Diccionario de datos
Los features del archivo provisto son 17, excepto el primero "Unnamed: 0" (que es de tipo int) todo el resto son tipos de datos object, forma denominada en pandas a los (strings), secuencias de caracteres que pueden contener números y / o caracteres. Por ejemplo, una secuencia de caracteres puede ser una palabra, una oración, o varias oraciones. 
No se indicó previamente que significaba cada columna, por lo que se debió investigar al respecto. A continuación se indicarán las 17 columnas y la explicación que se le da a cada una de ellos para que se comprenda los datos contenidos.

**"Unnamed: 0" :** Tipo de dato int que hace alusión al número de indice en cada fila. Valor numérico y único para cada dato.

**"fecha":** Fecha del accidente aéreo, en formato mes(escrito), número y año. Por ejemplo: Noviembre, 10,2022.

**"HORA declarada":** Hora en que se declara el accidente, mayoría de ellas en formato militar (1020), varias con datos incompletos, como "?".	

**"Ruta":** Ruta donde se registró el accidente. Lugar específico.	

**"OperadOR":** Aerolínea u operador a cargo del vuelo accidentado. Incluye también aviones militares o charters.	

**"flight_no":** Número de vuelo, un porcentaje cercano	a 75% de datos de tipo de tipo "?".

**"route":** La ruta que debería haber realizado el vuelo. Lugar de origen y destino.	Varios "?" (los llamaré nulos a partir de este momento).

**"ac_type":** Tipo de avión involucrado.	

**"registration":** Matrícula de aviones registrados. Las primeras letras generalmente corresponden a prefijos y codigos del pais, luego seguido por la identidad de ese avión.	Con nulos.

**"cn_ln":** Número de construcción o de serie / Número de línea o de fuselaje.	El fuselaje es el "cuerpo" de un avión, su estructura primaria. Es el recubrimiento que alberga la cabina de mando, el espacio para el transporte de pasajeros o para la bodega de carga. Además, es el armazón al que se adhieren otras partes fundamentales.

**"all_aboard":** "Todos a bordo", la cantidad de personas en vuelo en cada avión, entre pasajeros y tripulantes.	

**"PASAJEROS A BORDO":** Cantidad de pasajeros a bordo.

**"crew_aboard":** La tripulación a bordo del avión. Puede incluir a pilotos, oficiales de vuelo, Auxiliar de vuelo, comisarios de a bordo y azafatas.	

**"cantidad de fallecidos":** Cantidad total de fallecidos.	

**"passenger_fatalities":** Pasajeros fallecidos en vuelo.	

**"crew_fatalities":** Tripulación fallecida.	

**"ground":** Total de muertes en tierra . Es decir muertes "indirectas" al accidente aéreo. Por ejemplo en el impacto del avion.	

**"summary":** Resumen o comentarios sobre el vuelo en cuestión.

## Enfoque tomado para el acercamiento al problema.
* Se realizó un archivo notebook con todo el EDA (analisis exploratorio de los datos) necesario, llevando a cabo transformaciones y el preprocesamiento que se cree adecuado. A su vez se buscan e incorporan distintos datasets desde la página "http://planecrashinfo.com/", importandola directamente a python y trabajandolas de la misma manera antes mencionada. Todo esto se encontrará en este repositorio, con el nombre de archivo "Proyecto Individual III.ipynb". --- > https://github.com/AxelM1989/ProyectoHenry-III/blob/main/Proyecto%20Individual%20III.ipynb

* Una vez realizado el mismo se genera la exportación de los archivos trabajados y se importan en MySQL. Se dejan en este mismo repositorio el archivo de consultas SQL realizadas y "db" de database. 

* Desde allí se importan a Power Bi y se efectúa un dashboard correspondiente. Este tablero contendrá un análisis general de todos los accidentes aéreos registrados y también la parte correspondiente al Storytelling para presentar ante Henry Mentor, consistente en "Planteamiento" del problema, "Desarrollo" y "Conclusiones". 
* En este caso, ya que no obtengo la versión de cuenta de empresa para poder compartir mi dashboard, intentaré compartirlo de alguna forma. 

**De todas maneras, quedo disponible por si alguien quisiera que le dé una demostración del mismo a través de algún contacto personal.**

![image](https://user-images.githubusercontent.com/103937102/200997764-4ef81ca9-3af7-4ded-a34d-9bbd326a6a4c.png) 

![image](https://user-images.githubusercontent.com/103937102/200998378-212af6ce-6beb-4602-be14-9ff5045a622b.png)


![image](https://user-images.githubusercontent.com/103937102/200997850-29bf9a9a-4b03-4209-b41a-377b927b2e80.png)


![image](https://user-images.githubusercontent.com/103937102/200997880-31b43261-a856-4a25-ad1a-e05d83b880bc.png)





