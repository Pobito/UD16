/*2.1*/
select apellidos from empleados
/*2.2*/
select distinct(apellidos) from empleados
/*2.3*/
select * from empleados
where apellidos = 'López'
/*2.4*/
select * from empleados
where apellidos = 'López' or apellidos = 'Pérez'
/*2.5*/
select * from empleados
where departamento = 14
/*2.6*/
select * from empleados
where departamento = 37 or departamento = 77
/*2.7*/
select * from empleados
where apellidos like 'P%'
/*2.8*/
select nombre, presupuesto from departamentos
/*2.9*/
select count(e.nombre), d.nombre
from empleados e
inner join departamentos d
on e.departamento = d.codigo
group by d.nombre
/*2.10*/
select e.*, d.*
from empleados e
inner join departamentos d
on e.departamento = d.codigo
/*2.11*/
select e.nombre, e.apellidos, d.nombre, d.presupuesto
from empleados e
inner join departamentos d
on e.departamento = d.codigo
/*2.12*/ 
select e.nombre, e.apellidos, d.NOMBRE
from empleados e
inner join departamentos d
on e.departamento = d.codigo
where d.presupuesto > 60000
/*2.13*/
select * 
from departamentos
where presupuesto > (select avg(presupuesto) from departamentos)
/*2.14*/
select nombre from departamentos
where codigo in (select departamento from empleados group by departamento having count(nombre) > 2)
/*2.15*/
insert into departamentos values (11, 'Calidad', 40000);
insert into empleados values ('89267109', 'Esther', 'Vázquez', 11)
/*2.16*/
update departamentos set presupuesto = presupuesto * 0.9
/*2.17*/update empleados set departamento = 14
where departamento = 77
/*2.18*/
delete from empleados where departamento = 14
/*2.19*/
delete from empleados where departamento in (select codigo from departamentos where presupuesto >= 60000)
/*2.20*/
delete from empleados