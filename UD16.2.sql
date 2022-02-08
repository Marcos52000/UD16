use actividades;
/*2.1*/
select apellidos from empleados;
/*2.2*/
select distinct apellidos from empleados;
/*2.3*/
select * from empleados where apellidos = 'lopez';
/*2.4*/
select * from empleados where apellidos = 'lopez' or apellidos = 'perez' ;
/*2.5*/
select * from empleados where departamento = 14;
/*2.6*/
select * from empleados where departamento = 37 or departamento = 77;
/*2.7*/
select * from empleados where apellidos like 'P%';
/*2.8*/
select sum(Presupuesto) from departamentos;
/*2.9*/
select departamento, count(*) from empleados group by departamento;
/*2.10*/
select * from empleados inner join departamentos on empleados.departamento = departamentos.codigo;
/*2.11*/
select empleados.nombre, apellidos, departamentos.nombre, presupuesto from empleados inner join departamentos on empleados.departamento = departamentos.codigo;
/*2.12*/
select empleados.nombre, apellidos from empleados inner join  departamentos on empleados.departamento = departamentos.codigo and departamentos.presupuesto >60000;
/*2.13*/
select * from departamentos where presupuesto > (select avg(presupuesto) from departamentos);
/*1.14*/
select nombre from departamentos where codigo in (select departamento from empleados group by departamento having count(*) > 2);
/*2.15*/
insert into departamentos values (11,'Calidad',40000);
insert into empleados values('89267109', 'Esther','Vazquez',11);
/*2.16*/
update departamentos set presupuesto = presupuesto *0.9;
/*2.17*/
update empleados set departamento = 14 where departamento = 77;
/*2.18*/
delete from empleados where departamento = 14;
/*2.19*/
delete from empleados where departamento in (select codigo from departamentos where presupuesto >=60000);
/*2.20*/
delete from empleados;