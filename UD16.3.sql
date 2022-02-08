use actividades;
/*3.1*/
select* from almacenes;
/*3.2*/
select* from cajas where valor >150;
/*3.3*/
select distinct contenido from cajas;
/*3.4*/
select avg(valor) from cajas;
/*3.5*/
select almacen, avg(valor) from cajas group by almacen;
/*3.6*/
select almacen, avg(valor) from cajas group by almacen having avg(valor) >150;
/*3.7*/
select numreferencia, lugar from almacenes inner join cajas on almacenes.codigo = cajas.almacen;
/*3.8*/
select almacen, count(*) from cajas group by almacen;
/*3.9*/
select codigo from almacenes where capacidad<(select count(*) from cajas where almacen = codigo);
/*3.10*/
select numreferencia from almacenes left join cajas on almacenes.codigo=cajas.almacen where lugar = 'Bilbao';
/*3.11*/
insert into almacenes(Codigo,Lugar,Capacidad) values(6,'Barcelona',3);
/*3.12*/
insert into cajas values('H5RT','Papel',200,2);
/*3.13*/
update cajas set valor = valor * 0.85;
/*3.14*/
update cajas set valor = valor * 0.80 where valor > (select avg(valor) from cajas);
/*3.15*/
delete from cajas where valor <100;
/*3.16*/
delete from cajas where almacen in (select codigo from almacenes where capacidad <( select count(*) from cajas where almacen = codigo));