USE Facturas

CREATE TABLE Encargo(
	pedID int NOT NULL,
	proID int NOT NULL,
	Cantidad smallint not null,
	Descuento Numeric(3,1),

	constraint CK_Cantidad_encargo_mayor_cero check
	(
		Cantidad>0
	),
	constraint CK_Descuento_mayor_igual_cero check
	(
		Descuento>=0
	),
	constraint FK_encargo_pedido foreign key(pedID)
		references pedido(pedId)
	,

	constraint FK_encargo_producto foreign key(proID)
		references Producto(proID)
	,
	constraint UQ_PedidoUnico unique
		(pedId,proID)


)