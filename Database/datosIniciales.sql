INSERT INTO Grupo(nombre) VALUES
('Los espumosos'),
('Grupito2');

INSERT INTO Usuario (correo, password, rol, nombre, nacimiento, puntuacion, idGrupo) VALUES
('profesor1@unizar.es', '$2a$10$qU19QVc9kyDJIzP51FoWPehS5dvmLAUr3vHedekUHxKzK1CSSTbo2', 1, 'Profesor1', 1977, 0, 1),
('profesor2@unizar.es', 'profesor2', 1, 'Profesor2', 1980, 0, 1),
('alumno1@unizar.es', '$2a$10$V/Dp3mipwXyZeFiLlvshAu1NwS9q2e3L5R9VY2sHsOK9QfcKyGVGS', 2, 'Alumno1', 1996, 0, 2),
('alumno2@unizar.es', 'alumno2', 2, 'Alumno2', 1997, 0, 3),
('persona1@unizar.es', '$2a$10$yuEpUAmjh7FCSYFQvIZm3.7FnYKW7uAcq5warI7mQ56m4iMpdUTM6', 3, 'Persona1', 1985, 0, 1),
('persona2@unizar.es', '$2a$10$faWpVtHI/bHEdqD4CoXGKuVJ40ywTG.ygVVvN/lRt02oqBOW.osFu', 3, 'Persona2', 1988, 0, 1);

INSERT INTO Entrada (nombreImagen, titulo, fecha, noticia, reto, consejo, estado, idGrupo) VALUES
('img/img1.jpg','La contaminacion ambiental', null,'La contaminación ambiental se refiere a la presencia de agentes externos de origen ya sea físico; químico o biológico, que atentan contra la integridad de la naturaleza, llegando a ser nocivo no solo para el ambiente, sino también para los seres vivos que vivimos en él.<br/><br/>

Igualmente, cuando la contaminación ambiental se instaura también se va afectando el bienestar de la población; progresando en muchos de los casos a ser perjudiciales no solo para la vida humana, sino también para la vida animal y la existencia de las especies de flora.<br/><br/>

El mecanismo de producción de la contaminación del ambiente se asocia a la incorporación de cuerpos que atraen las sustancias sólidas; líquidas y gaseosas, incluso la combinación de todas ellas; alterando las condiciones naturales que lo han acreditado desde sus orígenes como un entorno ideal para los seres vivos.<br/><br/>

A medida que el hombre va adquiriendo más poder en la naturaleza; las posibilidades de empeorar la situación ambiental se incrementan si no se toman acciones a tiempo; pues muchas de las actividades realizadas por esta población deterioran las condiciones que integran el medio ideal.<br/><br/>

El comportamiento social del hombre en conjunto con su cultura siempre va adaptando el ambiente de acuerdo a sus necesidades, y muchas veces estos requerimientos no son compatibles con el equilibrio ecológico; lo que hace que la población humana busque los medios para mantenerse en confort, sea o no bueno para la salud del ecosistema.', '¿Te atreves a venir andando a la universidad/trabajo durante una semana?',
   'Si guardas los botes de café que uses, puedes usarlos para guardar bolígrafos e incluso decorarlos.',1,2),
('img/img2.jpg','La contaminacion sonora', null,'Los sonidos muy fuertes provocan molestias que van desde el sentimiento de desagrado y la incomodidad hasta daños irreversibles en el sistema auditivo. La presión acústica se mide en decibelios (dB) y los especialmente molestos son los que corresponden a los tonos altos (dB-A). La presión del sonido se vuelve dañina a unos 75 dB-A y dolorosa alrededor de los 120 dB-A. Puede causar la muerte cuando llega a 180 dB-A. El límite de tolerancia recomendado por la Organización Mundial de la Salud es de 65 dB-A.<br/><br/>
El oído necesita algo más de 16 horas de reposo para compensar 2 horas de exposición a 100 dB (discoteca ruidosa). Los sonidos de más de 120 dB (banda ruidosa de rock o volumen alto en los auriculares) pueden dañar a las células sensibles al sonido del oído interno provocando pérdidas de audición. <br/><br/>
España es el país más ruidoso de Europa y los datos obtenidos de 23 ciudades españolas en las que se ha realizado el mapa de ruidos, señalan que el nivel de ruido equivalente, durante el día, está en valores que varían de los 62 a los 73 dB.', 'Durante una semana no compres alimentos envasados individualmente.',
   'Guarda siempre una bolsa de plástico en la mochila por si la necesitas cuando vayas a comprar.',1,3);

INSERT INTO Cuestionario (tipo, pregunta, numFallos, numAciertos, posCorrecta, idEntrada) VALUES
(0, '¿Que tarda más en desaparecer de la naturaleza?', 1, 1, 1, 1),
(1, '¿Que te ha parecido la noticia 1?', 0, 0, 1, 1),
(0, '¿Que desechos tardan mas?', 1, 1, 2, 2),
(1, '¿Que te ha parecido la noticia 2?', 0, 0, 0, 2);

INSERT INTO Respuesta (posicion, cuerpo, tipoCuestionario, idEntrada) VALUES
(1,'Esta es la respuesta 1 (correcta)', 0, 1),
(2,'Esta es la respuesta 2 (incorrecta)', 0, 1),
(1,'Bien', 1, 1),
(2,'Mal', 1, 1),
(1,'Esta es la respuesta 1 (incorrecta)', 0, 2),
(2,'Esta es la respuesta 2 (correcta)', 0, 2),
(1,'Genial', 1, 2),
(2,'No tan bien', 1, 2);

INSERT INTO Contestar (idEntrada, tipo, correo, posPregunta) VALUES
(1,0,'persona1@unizar.es',1),
(1,0,'persona2@unizar.es',2),
(2,0,'persona1@unizar.es',1),
(2,0,'persona1@unizar.es',2);
