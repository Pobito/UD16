/*1.1*/
select NOMBRE from articulos;
/*1.2*/
select NOMBRE, PRECIO from articulos;
/*1.3*/
select NOMBRE from articulos
WHERE PRECIO <= 200;
/*1.4*/
SELECT * FROM articulos
where PRECIO between 60 and 120;
/*1.5*/
select NOMBRE, PRECIO, PRECIO*166.386 AS 'PESETAS' from articulos;
/*1.6*/
select avg(PRECIO) as 'Precio Medio' from articulos;
/*1.7*/
select avg(PRECIO) as 'Precio Medio' from articulos
where FABRICANTE = 2;
/*1.8*/
select count(NOMBRE) from articulos
where PRECIO >= 180;
/*1.9*/
select NOMBRE, PRECIO from articulos
where PRECIO >= 180
order by PRECIO desc, NOMBRE;
/*1.10*/
select * from articulos a
inner join fabricantes f
on a.FABRICANTE = f.CODIGO;
/*1.11*/
select a.NOMBRE, a.PRECIO, f.NOMBRE as 'Fabricante'
from articulos a
INNER join fabricantes f
on a.FABRICANTE = f.CODIGO;
/*1.12*/
select avg(a.PRECIO), f.NOMBRE as 'Fabricante'
from articulos a
INNER join fabricantes f
on a.FABRICANTE = f.CODIGO
group by f.NOMBRE;