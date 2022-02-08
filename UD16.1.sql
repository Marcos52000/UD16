use actividades;

/*1.1*/
select nombre from articulos;
/*1.2*/
select nombre,precio from articulos;
/*1.3*/
select nombre from articulos where PRECIO > 200;
/*1.4*/
select * from articulos where PRECIO between 60 and 120;
/*1.5*/
select nombre, precio * 166.386 as PrecioPesetas from articulos; 
/*1.6*/
select avg(precio) from articulos;
/*1.7*/
select avg(precio) from articulos where FABRICANTE = 2;
/*1.8*/
select count(*) from articulos where precio >= 180;
/*1.9*/
select nombre ,precio from articulos where precio >= 180 order by precio desc, nombre asc;
/*1.10*/
select * from articulos,fabricantes where articulos.FABRICANTE = fabricantes.CODIGO;
/*1.11*/
select articulos.NOMBRE,articulos.PRECIO, fabricantes.NOMBRE from articulos,fabricantes where articulos.FABRICANTE = fabricantes.CODIGO;
/*1.12*/
select avg(precio),fabricante from articulos group by FABRICANTE;
/*1.13*/
select avg(precio), fabricantes.NOMBRE from articulos,fabricantes where articulos.FABRICANTE = fabricantes.CODIGO group by fabricantes.NOMBRE;
/*1.14*/
select avg(precio), fabricantes.NOMBRE from articulos,fabricantes where articulos.FABRICANTE = fabricantes.CODIGO group by fabricantes.NOMBRE having avg(precio) >= 150;
/*1.15*/
select nombre , precio from articulos where precio = (select min(PRECIO) from articulos);
/*1.16*/
select articulos.NOMBRE, articulos.PRECIO, fabricantes.NOMBRE from articulos,fabricantes where articulos.FABRICANTE = fabricantes.CODIGO and articulos.PRECIO = (select max(articulos.PRECIO) from articulos where articulos.FABRICANTE = fabricantes.CODIGO);
/*1.17*/
insert into articulos (codigo,nombre,precio,fabricante) values (11,'Altavoces', 70 , 2);
/*1.18*/
update articulos set nombre = 'Impresora Laser' where codigo = 8;
/*1.19*/
update articulos set precio = precio * 0.9;
/*1.20*/
update articulos set precio = precio - 10 where precio >= 120;
