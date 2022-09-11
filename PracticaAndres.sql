create schema practicaAndres authorization eacjembt;

create table practicaandres.coche(
	id_coche varchar(10) not null,--PK
	matricula varchar(10) not null,
	id_modelo varchar(10) not null,--FK
	color varchar(20) not null, 
	kilometros integer not null, 
	fecha_compra date not null
);

alter table practicaandres.coche
add constraint id_coche_PK primary key (id_coche);

alter table practicaandres.coche
add constraint id_modelo_FK foreign key (id_modelo) references practicaandres.modelos(id_modelo)

--Creamos tabla de Seguros
create table practicaandres.seguro(
	id_coche varchar(10) not null,--PK 
	numero_poliza varchar(50) not null,
	aseguradora varchar (20) not null
);

alter table practicaandres.seguro
add constraint numero_poliza_PK primary key(numero_poliza);


select * from practicaandres.coche



-- Creamos la tabla de modelos.

create table practicaandres.modelos(
modelo varchar (50) not null, --PK
id_marca varchar(10) not null,
id_modelo varchar(10) not null
);
alter table practicaandres.modelos
add constraint modelo_PK primary key(id_modelo);

alter table practicaandres.modelos
add constraint id_marca_FK foreign key(id_marca) references practicaandres.marca(id_marca)

--Creamos tabla marca

create table practicaandres.marca(
	id_marca varchar (10) not null, --PK
	nombre_marca varchar (50) not null,
	id_grupo varchar(10) not null 
);
alter table practicaandres.marca
add constraint id_marca_PK primary key(id_marca);

alter table practicaandres.marca
add constraint id_grupo_FK foreign key(id_grupo) references practicaandres.grupo_empresarial(id_grupo)

--creamos tabla grupo empresarial

create table practicaandres.grupo_empresarial (
	id_grupo varchar(10) not null,--PK
	grupo_empresarial varchar(50) not null 
);
alter table practicaandres.grupo_empresarial
add constraint id_grupo_PK primary key(id_grupo);



--CREAMOS TABLA DE REVISIONES
create table practicaandres.revisiones(
	id_coche varchar (10) not null,
	id_revision varchar(10) not null, 
	fecha_revision date not null,
	kilometros varchar(20) not null,
	importe varchar(20) not null --FK
	
);

alter table practicaandres.revisiones
add constraint id_revision_PK primary key(id_coche);



create table practicaandres.importes_revisiones(
	id_revision varchar(10) not null,
	moneda_de_pago varchar(10) not null,
	cantidad varchar(10) not null
);

alter table practicaandres.importes_revisiones
add constraint importes_revisiones_FK foreign key(id_revision) references practicaandres.revisiones(id_coche)


--Cargamos datos COCHE


insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('01','7976 LVW','01','ROJO','21000','2005-12-03');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('02','0990 TVG','02','AZUL','123000','2010-06-01');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('03','8094 GVE','03','NEGRO','250000','2020-07-15');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('04','4632 SPD','04','BLANCO','8000','1999-08-04');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('05','3099 GXQ','05','NEGRO','4300','2011-09-12');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('06','5743 WYZ','06','AMARILLO','101000','2020-06-25');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('07','0638 WNP','07','VERDE','220123','2018-07-13');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('08','8741 HHO','08','VERDE','4280','2017-12-11');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('09','9749 GFP','09','BLANCO','50001','2019-11-18');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('10','5736 MNC','10','GRIS','23000','2014-01-09');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('11','5636 IBX','11','NEGRO','4238','2013-03-04');
insert into practicaandres.coche(id_coche, matricula, id_modelo, color, kilometros, fecha_compra) values('12','3705 VFG','12','AZUL','41502','2013-07-14');


--Cargamos datos de los MODELOS

insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('01','BERLINGO','01');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('02','ASTRA','02');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('03','GIULIA','03');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('04','500','04');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('05','A3','05');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('06','IBIZA','06');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('07','ESCALADE','07');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('08','CAMARO','08');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('09','EMIRA','09');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('10','V40','10');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('11','JUKE','11');
insert into practicaandres.modelos(id_modelo, modelo, id_marca) values('12','CLIO','12');


--Cargamos datos de las MARCAS


insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('CITROËN','01', '01');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('OPEL', '01', '02');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('ALFA ROMEO', '02', '03');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('FIAT','02', '04');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('AUDI','03', '05');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('SEAT','03', '06');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('CADILLAC','04', '07');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('CHEVROLET','04', '08');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('LOTUS','05', '09');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('VOLVO','05', '10');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('NISSAN','06', '11');
insert into practicaandres.marca (nombre_marca, id_grupo, id_marca) values('RENAULT','06', '12');

--CARGAMOS DATOS GRUPO EMPRESARIAL


insert into practicaandres.grupo_empresarial(id_grupo,grupo_empresarial)values('01','PSA');
insert into practicaandres.grupo_empresarial(id_grupo, grupo_empresarial)values('02','FCA');
insert into practicaandres.grupo_empresarial(id_grupo, grupo_empresarial)values('03','VOLKSWAGEN');
insert into practicaandres.grupo_empresarial(id_grupo, grupo_empresarial)values('04','GENERAL MOTORS');
insert into practicaandres.grupo_empresarial(id_grupo, grupo_empresarial)values('05','GEELY');
insert into practicaandres.grupo_empresarial(id_grupo, grupo_empresarial)values('06','ALIANZA RENAULT-NISSAN-MITSUBISHI');


--Cargamos datos seguro

insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('01','YM2LMUD8LC', 'MAPFRE');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('02','VU9QME3TZQ', 'ALLIANZ');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('03','T9ASK2JDLZ', 'MUTUA MADRILEÑA');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('04','5AD8HRFAZN', 'AXA');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('05','7QMQFUKAG5', 'AXA');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('06','XKE23M2ZQH', 'MAPFRE');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('07','32QWV26CSA', 'LINEA DIRECTA');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('08','CHSQUJC6B5', 'HELVETIA');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('09','8SZ9KHN8P8', 'GENERALI');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('10','YQVW7DTUT3', 'MAPFRE');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('11','QTDKMM38YR', 'AXA');
insert into practicaandres.seguro(id_coche, numero_poliza, aseguradora) values('12','Q8JRZFJMBH', 'HELVETIA');

--Cargamos table de revisiones

insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('01', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('02', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('03', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('04', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('05', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('06', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('07', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('08', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('09', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('10', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('11', '01','2022-08-12','2000', '500 €');
insert into practicaandres.revisiones(id_coche, id_revision, fecha_revision, kilometros, importe) 
values('12', '01','2022-08-12','2000', '1000 USD');


