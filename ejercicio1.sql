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
select avg(a.PRECIO), f.CODIGO as 'Fabricante'
from articulos a
INNER join fabricantes f
on a.FABRICANTE = f.CODIGO
group by f.CODIGO;
/*1.13*/
select avg(a.PRECIO), f.NOMBRE as 'Fabricante'
from articulos a
INNER join fabricantes f
on a.FABRICANTE = f.CODIGO
group by f.NOMBRE;
/*1.14*/
SELECT f.NOMBRE
from fabricantes f
inner join articulos a
on a.FABRICANTE = f.CODIGO
group by f.NOMBRE
having avg(a.PRECIO) >= 150
/*1.15*/
select precio, nombre from articulos
where PRECIO = (select min(PRECIO) from articulos);
/*1.16*/
select a.precio, a.nombre, f.nombre, f.codigo
from articulos a
join fabricantes f
on f.CODIGO = a.fabricante
where a.precio = (select max(a.precio) from articulos where a.fabricante = f.codigo)
/*1.17*/
insert into articulos values (10, 'Altavoz', 70, 2)
/*1.18*/
replace into articulos values (8, 'Impresora Laser', 270, 3)
/*1.19*/
update articulos set PRECIO = PRECIO * 0.9
/*1.20*/
update articulos set PRECIO = PRECIO - 10
where precio  >= 120