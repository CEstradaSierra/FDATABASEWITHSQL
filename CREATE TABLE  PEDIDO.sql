USE facturas 
CREATE TABLE pedido(
	pedID int  IDENTITY(1,1) NOT NULL,
	Fecha smalldatetime ,
	dni varchar(10) not null,

	constraint PK_pedido primary key
	(
		pedID ASC
	),
	constraint FK_pedido_cliente foreign key(dni)
		references Cliente(dni)
	
)