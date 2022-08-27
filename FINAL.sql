-- Creación de tablas

create table clientes(
    idCliente int primary key not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    genero varchar(50) not null,
    telefono int not null,
    correo varchar(50) not null);

insert into Clientes values(001,'Alonso','Mora','Hombre',83038470,'ljam@gmail.com');
insert into Clientes values(002,'Ricardo','Medina','Hombre',67890546,'rmedina@gmail.com');
insert into Clientes values(003,'Rolando','Suarez','Hombre',89054678,'suarezR7@gmail.com');
insert into Clientes values(004,'Alejandra','Mesa','Mujer',76543214,'alemeza@gmail.com');
insert into Clientes values(005,'Lupe','Lombardi','Mujer',87652134,'lupe2001@gmail.com');
insert into Clientes values(006,'Hans','Cristobal','Hombre',86574129,'hansSolo@gmail.com');
insert into Clientes values(007,'Ana','Trujillo','Mujer',85463789,'ana009@gmail.com');
insert into Clientes values(008,'Maria','Murillo','Mujer',78690541,'marimurillo@gmail.com');
insert into Clientes values(009,'Antonio','Moreno','Hombre',76589014,'moreno0910@gmail.com');
insert into Clientes values(010,'Sofia','Salazar','Mujer',85830978,'sofisalazar@gmail.com');
insert into Clientes values(011,'Xinia','Guzman','Mujer',87654321,'xguzman78@gmail.com');
insert into Clientes values(012,'Allan','Mora','Hombre',81234567,'mora7809@gmail.com');
insert into Clientes values(013,'Carlos','Soto','Hombre',83436720,'csoto2331@gmail.com');
insert into Clientes values(014,'Adrian','Jimenez','Hombre',88183456,'jimenex34@gmail.com');
insert into Clientes values(015,'Luis','Quintero','Hombre',87654902,'quintero77@gmail.com');
insert into Clientes values(016,'Jose','Fernandez','Hombre',76410089,'fernandez99@gmail.com');
insert into Clientes values(017,'Alfredo','Solano','Hombre',76019014,'jalfredosl@gmail.com');
insert into Clientes values(018,'Alejandro','Delgado','Hombre',89223455,'delgadoale@gmail.com');
insert into Clientes values(019,'Pedro','Hernandez','Hombre',70011238,'pedrix89@gmail.com');
insert into Clientes values(020,'Elizabeth','Cerdas','Mujer',64352901,'elibet20@gmail.com');
insert into Clientes values(021,'Alison','Salazar','Mujer',89000643,'salazaralis45@gmail.com');
insert into Clientes values(022,'Mariana','Vasquez','Mujer',87075043,'vasquez6789@gmail.com');
insert into Clientes values(023,'Margot','Salas','Mujer',89075643,'mms8909@gmail.com');
insert into clientes values(024,'Pamela','Hidalgo','Mujer',89765432,'pamehidalgo98@gmail.com');

select * from clientes;

create table departamento(
    idDepartamento int primary key not null,
    nomDepartamento varchar(50) not null,
    descripcion varchar(50) not null);

insert into departamento values(01,'Gerencia','Encargado del local');
insert into departamento values(02,'Oficina','Encargado del papeleo');
insert into departamento values(03,'Contabilidad','Encargado de la contaduria');
insert into departamento values(04,'Miselaneo','Encargado de la limpieza');
insert into departamento values(05,'DBA','Encargado de los sistemas, principalmente la BD');
insert into departamento values(06,'Repartidores','Encargado de repartir');
insert into departamento values(07,'Cajeros','Encargado de cajas');
insert into departamento values(08,'Call center','Servicio al cliente');
insert into departamento values(09,'Vendedor','Atención al público y ventas');

select * from departamento;

create table empleados(
    idEmpleado int primary key not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    salario int not null,
    genero varchar(50) not null,
    telefono int not null,
    correo varchar(50) not null,
    idDepartamento int not null,
    
    foreign key (idDepartamento) references departamento(idDepartamento));

insert into empleados values(0001,'Luis','Jimenez',850,'Hombre',87654390,'ljam098@gmail.com',01);
insert into empleados values(0002,'Maria','Jimenez',800,'Mujer',80674310,'jimenezm8@gmail.com',02);
insert into empleados values(101,'Julio','Azofeifa',430,'Hombre',78096543,'azo7800@gmail.com',06);
insert into empleados values(102,'Hazel','Villafuerte',470,'Mujer',62347890,'hazVilla12@gmail.com',02);
insert into Empleados values(103,'Alexander','Jiron',310,'Hombre',85120087,'alex100@gmail.com',05);
insert into Empleados values(104,'Alberto',' Mora',430,'Hombre',80912843,'alberto0987@gmail.com',01);
insert into Empleados values(105,'Jorgue','Guzman',300,'Hombre',88039870,'jorge12@gmail.com',04);
insert into Empleados values(106,'Alisson','Burgos',470,'Mujer',78904567,'alisburgos@gmail.com',02);
insert into Empleados values(107,'Donovan','Jimenez',1000,'Hombre',8909076,'donovan12@gmail.com',06);
insert into Empleados values(108,'Samantha','VillaLobos',450,'Mujer',83034567,'sam29@gmail.com',02);
insert into Empleados values(109,'Melani','Alpizar',350,'Mujer',84033120,'melanie9010gmail.com',07);
insert into Empleados values(110,'Sharon','Delgado',350,'Mujer',82091124,'shadelgadogmail.com',07);
insert into Empleados values(111,'Fabian','Fernandez',380,'Hombre',67809123,'fabianf34@gmail.com',09);
insert into Empleados values(112,'Daniel','Chacon',300,'Hombre',82013432,'danichacon@gmail.com',04);
insert into Empleados values(113,'Claudia','Castro',380,'Mujer',82321441,'claucastro14@gmail.com',08);
insert into Empleados values(114,'Andres','Vargas',380,'Hombre',78657766,'vargasandres23@gmail.com',09);
insert into Empleados values(115,'Marco','Hernandez',400,'Hombre',80012345,'hernandezmarco9000@gmail.com',06);


select * from empleados;

create table provincias(
    idProvincia int primary key,
    nombre varchar(50));

insert into provincias values(1,'San José');
insert into provincias values(2,'Alajuela');
insert into provincias values(3,'Cartago');
insert into provincias values(4,'Heredia');
insert into provincias values(5,'Guanacaste');
insert into provincias values(6,'Puntarenas');
insert into provincias values(7,'Limón');

select * from provincias;

create table sucursales(
    idSucursal varchar(10) primary key,
    nombre varchar(50) not null,
    idProvincia int not null,
    
    foreign key (idProvincia) references provincias(idProvincia));

insert into sucursales values('S-01','San José',1);
insert into sucursales values('S-02','Heredia',4);
insert into sucursales values('S-03','Gunacaste',5);
insert into sucursales values('S-04','Puntarenas',6);
insert into sucursales values('S-05','Cartago',3);
insert into sucursales values('S-06','Limón',7);
insert into sucursales values('S-07','Alajuela',2);


select * from sucursales;

create table proveedor(
    idProveedor varchar(10) primary key not null,
    nomProveedor varchar(50) not null,
    telefono int not null,
    correo varchar(50) not null);

insert into proveedor values('P-01','LENOVO',86564250,'lenovocostarica@gmail.com');
insert into proveedor values('P-02','ASUS',84526895,'proveedorasus@gmail.com');
insert into proveedor values('P-03','INTEL',83654596,'distribuidorintelcostarica@gmail.com');
insert into proveedor values('P-04','SAMSUNG',81825496,'sansungcentroamerica@hotmail.com');
insert into proveedor values('P-05','HUAWEI',81835645,'huaweicostarica69@huawei.com');
insert into proveedor values('P-06','CATERPILLAR',81846595,'cat1296costarica@cat.com');
insert into proveedor values('P-07','JUEGOS Y MAS JUEGOS',81786505,'juegosymasjuegoscostarica@ggmail.com');

select * from proveedor;

create table categoriaProducto(
    idCat int primary key not null,
    nombreCategoria varchar(50) not null,
    descripcion varchar(50) not null);


insert into categoriaProducto values(1,'Consolas de video juegos','consolas');
insert into categoriaProducto values(2,'Computadoras','PC Gaming');
insert into categoriaProducto values(3,'Video Juegos','juegos ps4,xbox,switch');
insert into categoriaProducto values(4,'Accesorios','Accesorios para pc');

select * from categoriaProducto;

create table producto(
    idProducto int primary key not null,
    nombre varchar(50) not null,
    descripcion varchar(50) not null,
    precio int not null,
    idProveedor varchar(10) not null,
    idCat int not null,
    
    foreign key (idCat) references categoriaProducto(idCat),
    foreign key (idProveedor) references proveedor(idProveedor));

insert into producto values('600','PLAY STATION 5','consola de play station',480,'P-07',1);
insert into producto values('601','XBOX SERIE X','consola de Xbox',430,'P-07',1);
insert into producto values('602','NINTENDO SWITCH','consola de Nintendo',260,'P-07',1);
insert into producto values('603','PLAY STATION 4 PRO','consola de play station',415,'P-07',1);
insert into producto values('700','FIFA 21','juego para ps4 o ps5',80,'P-07',3);
insert into producto values('701','CALL OF DUTY BLACK OPS','juego para Xbox ',67,'P-07',3);
insert into producto values('702','GRAND THEFT AUTO V','juego para play 5 o play 4',75,'P-07',3);
insert into producto values('703','RED DEAD REDEMPTION 2','Juego para play 4 o play 5',80,'P-07',3);
insert into producto values('800','AUDIFONOS SOUNDROUND','audifonos gaming',230,'P-02',4);
insert into producto values('801','TECLADO MECANICO','teclado iluminado',120,'P-02',4);
insert into producto values('802','BASE ENFRIADORA','basa para computadora',80,'P-02',4);
insert into producto values('803','DUALSHOCK PS4','control para ps4',90,'P-07',4);
insert into producto values('804','DUALSHOCK XBOX','control para Xbox',75,'P-07',4);
insert into producto values('805','MOUSE ILUMINADO','mouse iluminado para PC',45,'P-02',4);
insert into producto values('806','SILLA GAMING','silla para jugadores',2800,'P-07',4);
insert into producto values('900','ASUS ROG STRIX III','laptop gaming',2000,'P-02',2);
insert into producto values('901','LENOVO LEGION','laptop gaming',1700,'P-01',2);
insert into producto values('902','MSI THIM GAMING','laptop gaming',1500,'P-03',2);
insert into producto values('903','DELL ALIENWARE ','laptop gaming',1400,'P-03',2);
insert into producto values('904','ACER PREDATOR','laptop gaming',1200,'P-03',2);

select * from producto;

create table factura(
    idFactura varchar(10) primary key not null,
    idCliente int not null,
    idSucursal varchar(10) not null,
    fecha date not null,
    total int not null,
    
    foreign key (idCliente) references clientes(idCliente),
    foreign key (idSucursal) references sucursales(idSucursal));

insert into factura values('F01',002,'S-01',TO_DATE('13.05.2021','DD.MM.YYYY'),2000);
insert into factura values('F02',003,'S-02',TO_DATE('16.05.2021','DD.MM.YYYY'),1400);
insert into factura values('F03',001,'S-03',TO_DATE('10.06.2021','DD.MM.YYYY'),310);
insert into factura values('F04',010,'S-05',TO_DATE('01.07.2021','DD.MM.YYYY'),1320);
insert into factura values('F05',011,'S-06',TO_DATE('02.07.2021','DD.MM.YYYY'),1290);
insert into factura values('F06',012,'S-02',TO_DATE('12.07.2021','DD.MM.YYYY'),400);
insert into factura values('F07',015,'S-04',TO_DATE('16.07.2021','DD.MM.YYYY'),2610);
insert into factura values('F08',016,'S-04',TO_DATE('17.07.2021','DD.MM.YYYY'),860);
insert into factura values('F09',008,'S-03',TO_DATE('10.07.2021','DD.MM.YYYY'),225);
insert into factura values('F10',003,'S-01',TO_DATE('13.07.2021','DD.MM.YYYY'),4000);
insert into factura values('F11',002,'S-02',TO_DATE('13.07.2021','DD.MM.YYYY'),361);
insert into factura values('F12',020,'S-07',TO_DATE('16.07.2021','DD.MM.YYYY'),2080);

select * from factura;


create table detalleFactura(
    idDetalleFactura varchar(10) primary key not null,
    idFactura varchar(10) not null,
    idProducto int not null,
    cantidad int not null,
    precio int not null,
    subtotal int not null,
    

    foreign key (idFactura) references factura(idFactura),
    foreign key (idProducto) references producto(idProducto));

insert into detalleFactura values('DF1','F01',900,1,2000,2000);
insert into detalleFactura values('DF2','F02',903,1,1400,1400);
insert into detalleFactura values('DF3','F03',703,1,80,80);
insert into detalleFactura values('DF4','F03',800,1,230,230);
insert into detalleFactura values('DF5','F04',806,3,280,840);
insert into detalleFactura values('DF6','F04',600,1,480,480);
insert into detalleFactura values('DF7','F04',806,3,280,840);
insert into detalleFactura values('DF8','F05',904,1,1200,1200);
insert into detalleFactura values('DF9','F05',805,2,45,90);
insert into detalleFactura values('DF10','F06',802,5,80,400);
insert into detalleFactura values('DF11','F07',901,1,1700,1700);
insert into detalleFactura values('DF12','F07',603,2,415,830);
insert into detalleFactura values('DF13','F07',703,1,80,80);
insert into detalleFactura values('DF14','F08',601,2,430,860);
insert into detalleFactura values('DF15','F09',804,3,75,225);
insert into detalleFactura values('DF16','F10',900,2,2000,4000);
insert into detalleFactura values('DF17','F11',701,3,67,201);
insert into detalleFactura values('DF18','F11',703,2,80,160);
insert into detalleFactura values('DF19','F12',602,8,260,2080);


select * from detalleFactura;


create table localidad_Sucursal(
    idLocalidad int primary key not null,
    direccion varchar(100) not null,
    codigo_postal int not null,
    idSucursal varchar(10) not null,
    
    foreign key (idSucursal) references sucursales(idSucursal));

insert into localidad_Sucursal values(1001,'San José centro',1004,'S-01');
insert into localidad_Sucursal values(1002,'Heredia centro',103,'S-02');
insert into localidad_Sucursal values(1003,'Puntarenas cerca del muelle',1064,'S-04');
insert into localidad_Sucursal values(1004,'Cartago costado sur de la basilica',106,'S-05');
insert into localidad_Sucursal values(1005,'Alajuela centro',1068,'S-07');
insert into localidad_Sucursal values(1006,'Limón, manzanillo',1079,'S-06');
insert into localidad_Sucursal values(1007,'Guanacaste, playa grande',1078,'S-03');

select * from localidad_Sucursal;

create table productoxsucursal(
    idProducto int not null,
    idSucursal varchar(10) not null,
    cantidad int not null,
    
    foreign key (idProducto) references producto(idProducto),
    foreign key (idSucursal) references sucursales(idSucursal));

        -- Sucursal 01

insert into productoxsucursal values(600,'S-01',5);
insert into productoxsucursal values(601,'S-01',3);
insert into productoxsucursal values(602,'S-01',7);
insert into productoxsucursal values(603,'S-01',4);
insert into productoxsucursal values(700,'S-01',15);
insert into productoxsucursal values(701,'S-01',12);
insert into productoxsucursal values(702,'S-01',2);
insert into productoxsucursal values(703,'S-01',6);
insert into productoxsucursal values(800,'S-01',2);
insert into productoxsucursal values(801,'S-01',3);
insert into productoxsucursal values(802,'S-01',6);
insert into productoxsucursal values(803,'S-01',8);
insert into productoxsucursal values(804,'S-01',5);
insert into productoxsucursal values(805,'S-01',7);
insert into productoxsucursal values(806,'S-01',6);
insert into productoxsucursal values(900,'S-01',3);
insert into productoxsucursal values(901,'S-01',0);
insert into productoxsucursal values(902,'S-01',1);
insert into productoxsucursal values(903,'S-01',2);
insert into productoxsucursal values(904,'S-01',3);

        -- Sucursal 02

insert into productoxsucursal values(600,'S-02',6);
insert into productoxsucursal values(601,'S-02',4);
insert into productoxsucursal values(602,'S-02',5);
insert into productoxsucursal values(603,'S-02',8);
insert into productoxsucursal values(700,'S-02',2);
insert into productoxsucursal values(701,'S-02',3);
insert into productoxsucursal values(702,'S-02',1);
insert into productoxsucursal values(703,'S-02',5);
insert into productoxsucursal values(800,'S-02',4);
insert into productoxsucursal values(801,'S-02',1);
insert into productoxsucursal values(802,'S-02',8);
insert into productoxsucursal values(803,'S-02',1);
insert into productoxsucursal values(804,'S-02',0);
insert into productoxsucursal values(805,'S-02',0);
insert into productoxsucursal values(806,'S-02',0);
insert into productoxsucursal values(900,'S-02',2);
insert into productoxsucursal values(901,'S-02',1);
insert into productoxsucursal values(902,'S-02',5);
insert into productoxsucursal values(903,'S-02',6);
insert into productoxsucursal values(904,'S-02',9);

        -- Sucursal 03

insert into productoxsucursal values(600,'S-03',7);
insert into productoxsucursal values(601,'S-03',8);
insert into productoxsucursal values(602,'S-03',1);
insert into productoxsucursal values(603,'S-03',2);
insert into productoxsucursal values(700,'S-03',3);
insert into productoxsucursal values(701,'S-03',2);
insert into productoxsucursal values(702,'S-03',3);
insert into productoxsucursal values(703,'S-03',3);
insert into productoxsucursal values(800,'S-03',5);
insert into productoxsucursal values(801,'S-03',4);
insert into productoxsucursal values(802,'S-03',0);
insert into productoxsucursal values(803,'S-03',1);
insert into productoxsucursal values(804,'S-03',3);
insert into productoxsucursal values(805,'S-03',5);
insert into productoxsucursal values(806,'S-03',6);
insert into productoxsucursal values(900,'S-03',8);
insert into productoxsucursal values(901,'S-03',9);
insert into productoxsucursal values(902,'S-03',1);
insert into productoxsucursal values(903,'S-03',2);
insert into productoxsucursal values(904,'S-03',3);

        -- Sucursal 04

insert into productoxsucursal values(600,'S-04',4);
insert into productoxsucursal values(601,'S-04',5);
insert into productoxsucursal values(602,'S-04',6);
insert into productoxsucursal values(603,'S-04',9);
insert into productoxsucursal values(700,'S-04',9);
insert into productoxsucursal values(701,'S-04',8);
insert into productoxsucursal values(702,'S-04',2);
insert into productoxsucursal values(703,'S-04',4);
insert into productoxsucursal values(800,'S-04',1);
insert into productoxsucursal values(801,'S-04',1);
insert into productoxsucursal values(802,'S-04',1);
insert into productoxsucursal values(803,'S-04',2);
insert into productoxsucursal values(804,'S-04',3);
insert into productoxsucursal values(805,'S-04',6);
insert into productoxsucursal values(806,'S-04',7);
insert into productoxsucursal values(900,'S-04',9);
insert into productoxsucursal values(901,'S-04',1);
insert into productoxsucursal values(902,'S-04',13);
insert into productoxsucursal values(903,'S-04',1);
insert into productoxsucursal values(904,'S-04',1);

        -- Sucursal 05

insert into productoxsucursal values(600,'S-05',3);
insert into productoxsucursal values(601,'S-05',3);
insert into productoxsucursal values(602,'S-05',6);
insert into productoxsucursal values(603,'S-05',5);
insert into productoxsucursal values(700,'S-05',4);
insert into productoxsucursal values(701,'S-05',8);
insert into productoxsucursal values(702,'S-05',9);
insert into productoxsucursal values(703,'S-05',8);
insert into productoxsucursal values(800,'S-05',14);
insert into productoxsucursal values(801,'S-05',5);
insert into productoxsucursal values(802,'S-05',6);
insert into productoxsucursal values(803,'S-05',5);
insert into productoxsucursal values(804,'S-05',2);
insert into productoxsucursal values(805,'S-05',0);
insert into productoxsucursal values(806,'S-05',6);
insert into productoxsucursal values(900,'S-05',0);
insert into productoxsucursal values(901,'S-05',3);
insert into productoxsucursal values(902,'S-05',0);
insert into productoxsucursal values(903,'S-05',6);
insert into productoxsucursal values(904,'S-05',4);

        -- Sucursal 06

insert into productoxsucursal values(600,'S-06',6);
insert into productoxsucursal values(601,'S-06',3);
insert into productoxsucursal values(602,'S-06',2);
insert into productoxsucursal values(603,'S-06',5);
insert into productoxsucursal values(700,'S-06',6);
insert into productoxsucursal values(701,'S-06',4);
insert into productoxsucursal values(702,'S-06',25);
insert into productoxsucursal values(703,'S-06',4);
insert into productoxsucursal values(800,'S-06',1);
insert into productoxsucursal values(801,'S-06',2);
insert into productoxsucursal values(802,'S-06',3);
insert into productoxsucursal values(803,'S-06',5);
insert into productoxsucursal values(804,'S-06',1);
insert into productoxsucursal values(805,'S-06',3);
insert into productoxsucursal values(806,'S-06',6);
insert into productoxsucursal values(900,'S-06',1);
insert into productoxsucursal values(901,'S-06',5);
insert into productoxsucursal values(902,'S-06',6);
insert into productoxsucursal values(903,'S-06',0);
insert into productoxsucursal values(904,'S-06',0);

        -- Sucursal 07

insert into productoxsucursal values(600,'S-07',9);
insert into productoxsucursal values(601,'S-07',6);
insert into productoxsucursal values(602,'S-07',3);
insert into productoxsucursal values(603,'S-07',2);
insert into productoxsucursal values(700,'S-07',5);
insert into productoxsucursal values(701,'S-07',4);
insert into productoxsucursal values(702,'S-07',8);
insert into productoxsucursal values(703,'S-07',4);
insert into productoxsucursal values(800,'S-07',5);
insert into productoxsucursal values(801,'S-07',6);
insert into productoxsucursal values(802,'S-07',2);
insert into productoxsucursal values(803,'S-07',3);
insert into productoxsucursal values(804,'S-07',1);
insert into productoxsucursal values(805,'S-07',0);
insert into productoxsucursal values(806,'S-07',0);
insert into productoxsucursal values(900,'S-07',5);
insert into productoxsucursal values(901,'S-07',1);
insert into productoxsucursal values(902,'S-07',2);
insert into productoxsucursal values(903,'S-07',3);
insert into productoxsucursal values(904,'S-07',6);


select * from productoxsucursal;


-- Procedimientos

CREATE OR REPLACE PROCEDURE cuentaEmpleados ( p_depto IN empleados.idEmpleado%type)
as
  v_nom empleados.nombre%type;
  v_ape empleados.apellido%type;
  CURSOR c_emp is
  select nombre,apellido
  from empleados
  where idDepartamento = p_depto;

begin 
  OPEN c_emp;
  loop
    fetch c_emp into v_nom,v_ape;
    EXIT when c_emp%NOTFOUND;
    dbms_output.put_line(v_nom||' '||v_ape);
  end loop;
  dbms_output.put_line('Cantidad de empleados: ' ||' '||c_emp%rowcount);
  CLOSE c_emp;
end;

exec cuentaEmpleados(1); 

-- Funciones 

    /* Esta función se encarga de aplicar un 10% de descuento en los productos que
    tengan un precio menor a 200 y un 15% de descuento en los productos con un precio igual
    o mayor a 200 */

create or replace function func_descuento(precioProducto in int) return int
is
begin
    if precioProducto < 200 then
        return (precioProducto - (precioProducto * 0.10));
    else
        return (precioProducto - (precioProducto * 0.15));
    end if;    
end;
 
select idProducto,nombre,descripcion,precio,func_descuento(precio) as PRECIO_CON_DESCUENTO
from producto
where idProducto = 600;



        /* Esta función se encarga de sumar los salarios de los empleados que pertenecen
        al número de departamento enviado por parámetros */ 

CREATE OR REPLACE FUNCTION salarioPorDepartamento (idDepar in int) return int
IS    
    v_salario empleados.salario%type;    

    CURSOR cursorSalarioDepar is        
    SELECT SALARIO FROM EMPLEADOS
    WHERE idDepartamento = idDepar;
BEGIN
    OPEN cursorSalarioDepar;
    loop
        fetch cursorSalarioDepar into v_salario;
        v_salario := v_salario + v_salario;
        DBMS_OUTPUT.PUT_LINE(v_salario);
        exit when cursorSalarioDepar%NOTFOUND;
    end loop;
    return v_salario;
    EXCEPTION 
    WHEN  NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE(' NO HAY DATOS ' );
    WHEN  invalid_number THEN
    DBMS_OUTPUT.PUT_LINE(' DIGITE UN VALOR VALIDO E INTENTE NUEVAMENTE ' );
    WHEN  OTHERS  THEN
    DBMS_OUTPUT.PUT_LINE(' OCURRIÓ UN ERROR ' ); 
END;

select salarioPorDepartamento(2) from dual;

-- Paquetes

CREATE OR REPLACE PACKAGE packageFunciones IS
  function func_descuento(precioProducto in int) return int;
  FUNCTION salarioPorDepartamento (idDepar in int) return int;
END;

CREATE OR REPLACE PACKAGE BODY packageFunciones IS
    /* funcion 1 */
    function func_descuento(precioProducto int) return int
    is
    begin
        if precioProducto < 200 then
            return (precioProducto - (precioProducto * 0.10));
        else
            return (precioProducto - (precioProducto * 0.15));
        end if;    
    end;
    
    /* función 2 */
    FUNCTION salarioPorDepartamento (idDepar int) return int
    IS    
        v_salario empleados.salario%type;    
        CURSOR cursorSalarioDepar is        
        SELECT SALARIO FROM EMPLEADOS
        WHERE idDepartamento = idDepar;
    BEGIN
        OPEN cursorSalarioDepar;
        loop
            fetch cursorSalarioDepar into v_salario;
            v_salario := v_salario + v_salario;
            DBMS_OUTPUT.PUT_LINE(v_salario);
            exit when cursorSalarioDepar%NOTFOUND;
        end loop;
        return v_salario;
        EXCEPTION 
        WHEN  NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(' NO HAY DATOS ' );
        WHEN  invalid_number THEN
        DBMS_OUTPUT.PUT_LINE(' DIGITE UN VALOR VALIDO E INTENTE NUEVAMENTE ' );
        WHEN  OTHERS  THEN
        DBMS_OUTPUT.PUT_LINE(' OCURRIÓ UN ERROR ' ); 
    END;
    
    
END;


-- Triggers

CREATE OR REPLACE TRIGGER control_insercion_producto
BEFORE INSERT ON producto
BEGIN
  IF TO_CHAR(SYSDATE,'D') = '1' 
      THEN RAISE_APPLICATION_ERROR(-20506,'¡No los domingos!');
  END IF;
END; 

insert into producto
values('905','ASUS VERSION V','laptop gaming',1100,'P-07',2);

SELECT * FROM producto;

SELECT TO_CHAR(SYSDATE,'D') FROM DUAL;  



CREATE SEQUENCE PISTAS
START WITH 1
INCREMENT BY 1;

create table PistaAditoria
(NumPista int not null,
accion varchar(20) not null,
usuario varchar(20) not null,
fecha date not null,
salario_anterior decimal(12,2) not null,
salario_actual decimal(12,2) not null,
primary key(NumPista));

CREATE OR REPLACE TRIGGER auditoria_salario
AFTER UPDATE OF salario ON empleados
FOR EACH ROW
DECLARE
  vaccion PistaAditoria.accion%type;
BEGIN
    IF UPDATING THEN 
      vaccion := 'ACTUALIZO';
  END IF;
  insert into PistaAditoria (NumPista,accion,usuario,fecha,salario_anterior,salario_actual)
  values(pistas.nextval,vaccion,user,sysdate,:old.salario,:new.salario);
END;

UPDATE empleados
SET salario = 170
WHERE idEmpleado= 112;

SELECT * FROM PistaAditoria;

-- SQL Dinámico

CREATE OR REPLACE PROCEDURE pdinamico( e_id IN empleados.idEmpleado%type)
as
  v_depto departamento.nomDepartamento%type;
  v_nom empleados.nombre%type;
  v_ape empleados.apellido%type;
  D_SQL VARCHAR(300);
begin 
   D_SQL:= 'SELECT nombre,apellido,b.nomDepartamento
  FROM empleados A, departamento B
  WHERE A.idDepartamento = B.idDepartamento AND
         idEmpleado= :e_id';      
  EXECUTE IMMEDIATE D_SQL INTO v_nom,v_ape,v_depto using e_id;
  DBMS_OUTPUT.PUT_LINE(v_nom||' '||v_ape||' '||v_depto);   
end;

exec pdinamico(101); 


CREATE OR REPLACE PROCEDURE pdinamico2( c_id IN clientes.idCliente%type)
as
  v_gen clientes.genero%type;
  v_nom clientes.nombre%type;
  v_ape clientes.apellido%type;
  D_SQL VARCHAR(300);
begin 
   D_SQL:= 'SELECT nombre,apellido,genero
  FROM clientes
  WHERE idCliente = :c_id';      
  EXECUTE IMMEDIATE D_SQL INTO v_nom,v_ape,v_gen using c_id;
  DBMS_OUTPUT.PUT_LINE(v_nom||' '||v_ape||' '||v_gen);   
end;

exec pdinamico2(1);


CREATE OR REPLACE function F_INSERT_CLIENTES(IDCLIENTE NUMBER, NOMBRE VARCHAR2, APELLIDO VARCHAR2, GENERO VARCHAR2, 
TELEFONO NUMBER, CORREO VARCHAR2)
return number
is 
BEGIN
     insert into CLIENTES values (IDCLIENTE, NOMBRE, APELLIDO, GENERO, TELEFONO, CORREO);
     return 1;
END;

CREATE OR REPLACE function F_INSERT_EMPLEADO(IDEMPLEADO NUMBER, NOMBRE VARCHAR2, APELLIDO VARCHAR2,SALARIO NUMBER, GENERO VARCHAR2, 
TELEFONO NUMBER, CORREO VARCHAR2,IDDEPARTAMENTO NUMBER)
return number
is 
BEGIN
     insert into EMPLEADOS values (IDEMPLEADO, NOMBRE, APELLIDO,SALARIO,GENERO,TELEFONO, CORREO,IDDEPARTAMENTO);
     return 1;
END; 

CREATE OR REPLACE VIEW VISTA_EMPLEADOS AS 

SELECT
E.IDEMPLEADO AS IDEMPLEADO, E.NOMBRE AS NOMBRE, E.APELLIDO AS APELLIDO, E.SALARIO AS SALARIO, E.GENERO AS GENERO, E.TELEFONO AS TELEFONO, E.CORREO AS CORREO,CONCAT(D.IDDEPARTAMENTO,CONCAT('-', D.NOMDEPARTAMENTO))  AS NOMBREDEPARTAMENTO
FROM EMPLEADOS E JOIN DEPARTAMENTO D ON E.IDDEPARTAMENTO = D.IDDEPARTAMENTO;
   
SELECT * FROM VISTA_EMPLEADOS;


-- Cursores
    -- Este cursor se encarga de mostrar todos los empleados de la tabla empleados

declare
cursor usuarios is 
    select nombre, apellido
    from empleados;
begin
    for u in usuarios loop
        dbms_output.put_line(u.apellido||' '||u.nombre);
    end loop; 
    EXCEPTION 
        WHEN  NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE(' NO HAY DATOS ' );
        WHEN  invalid_number THEN
            DBMS_OUTPUT.PUT_LINE(' DIGITE UN VALOR VALIDO E INTENTE NUEVAMENTE ' );
        WHEN  OTHERS  THEN
            DBMS_OUTPUT.PUT_LINE(' OCURRIÓ UN ERROR ' );
end; 

    -- Este cursor se encarga de mostrar el nombre de todos los clientes almacenados

DECLARE

CURSOR C_CLI IS
SELECT nombre 
FROM clientes
ORDER BY idCliente;

BEGIN
   FOR VP IN C_CLI LOOP
   DBMS_OUTPUT.PUT_LINE ('Nombre: ' || VP.nombre);
END LOOP ;
    EXCEPTION 
    WHEN  NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(' NO HAY DATOS ' );
    WHEN  invalid_number THEN
        DBMS_OUTPUT.PUT_LINE(' DIGITE UN VALOR VALIDO E INTENTE NUEVAMENTE ' );
    WHEN  OTHERS  THEN
        DBMS_OUTPUT.PUT_LINE(' OCURRIÓ UN ERROR ' );

END;


-- Cursores de sistema

CREATE OR REPLACE FUNCTION CUR_SYS(e_id IN empleados.idEmpleado%type) RETURN SYS_REFCURSOR
as
  DATOS SYS_REFCURSOR;
begin 
  OPEN DATOS FOR SELECT nombre,apellido
  FROM empleados
  WHERE idEmpleado = e_id;
  return DATOS;
end;
 
CREATE OR REPLACE FUNCTION CUR_SYS2(p_id IN provincias.idProvincia%type) RETURN SYS_REFCURSOR
as
  DATOS SYS_REFCURSOR;
begin 
  OPEN DATOS FOR SELECT nombre
  FROM provincias
  WHERE idProvincia = p_id;
  return DATOS;
end;
