create table Grupo
(
  id     tinyint(3) auto_increment
    primary key,
  nombre varchar(50) not null
);

create table Entrada
(
  id           smallint(4) auto_increment
    primary key,
  nombreImagen varchar(20)            not null,
  titulo       varchar(50)            not null,
  fecha        date                   null,
  noticia      text                   not null,
  reto         text                   not null,
  consejo      text                   not null,
  estado       tinyint(1) default '0' null,
  idGrupo      tinyint(3)             not null,
  constraint FK_grupo_id_entrada
  foreign key (idGrupo) references Grupo (id)
);

create table Cuestionario
(
  tipo        tinyint(1)  not null,
  pregunta    varchar(70) not null,
  numFallos   tinyint(3)  not null,
  numAciertos tinyint(3)  not null,
  posCorrecta tinyint(1)  not null,
  idEntrada   smallint(4) not null,
  primary key (idEntrada, tipo),
  constraint FK_entrada_id_cuestionario
  foreign key (idEntrada) references Entrada (id)
);

create table Respuesta
(
  posicion         tinyint(1)  not null,
  cuerpo           varchar(50) not null,
  tipoCuestionario tinyint(1)  not null,
  idEntrada        smallint(4) not null,
  primary key (idEntrada, tipoCuestionario, posicion),
  constraint FK_cuestionario_tipo_respuesta
  foreign key (idEntrada, tipoCuestionario) references Cuestionario (idEntrada, tipo)
);

create table Usuario
(
  correo     varchar(50) not null,
  password   varchar(60) not null,
  rol        tinyint(1)  not null,
  nombre     varchar(20) not null,
  nacimiento smallint(4) not null,
  puntuacion smallint(4) not null,
  idGrupo    tinyint(3)  not null,
  primary key (correo),
  constraint FK_grupo_id_usuario
  foreign key (idGrupo) references Grupo (id)
);

create table Contestar
(
  idEntrada   smallint(4) not null,
  tipo        tinyint(1)  not null,
  correo      varchar(50) not null,
  posPregunta tinyint(1)  not null,
  primary key (idEntrada, tipo, correo, posPregunta),
  constraint FK_tipo_cuestionario_contestar
  foreign key (idEntrada, tipo) references Cuestionario (idEntrada, tipo),
  constraint FK_usuario_contestar
  foreign key (correo) references Usuario (correo)
);
