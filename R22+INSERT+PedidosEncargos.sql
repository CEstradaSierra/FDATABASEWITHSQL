use Facturas

insert into Pedido
values
(CURRENT_TIMESTAMP,'111111111B')

select * from Pedido

insert into Encargo
values
(1,1,1,0)

select * from Encargo



---------------------------------------------
use Facturas

---- Pedidos de Clientes -----
insert into Pedido
values
('20191228','333334444I')

insert into Pedido
values
('20191228','666667777J')

insert into Pedido
values
('20191212','444444444C')

insert into Pedido
values
('20191225','333334444I')

insert into Pedido
values
('20191223','777778888M')

insert into Pedido
values
('20191222','777776666I')

insert into Pedido
values
('20191229','888888888E')


----- Encargos a Almacén -------
insert into Encargo
values
(4,64,2,0)

insert into Encargo
values
(5,65,1,10)

insert into Encargo
values
(4,67,2,0)

insert into Encargo
values
(10,71,1,0)

insert into Encargo
values
(12,72,2,25)

insert into Encargo
values
(21,75,3,0)

insert into Encargo
values
(15,12,1,15)

insert into Encargo
values
(17,13,2,12)

insert into Encargo
values
(16,19,1,0)

insert into Encargo
values
(17,26,1,0)
