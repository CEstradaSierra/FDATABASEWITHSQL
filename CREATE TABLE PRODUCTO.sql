--DEFINIR QUE BASE DATOS VAMOS A USAR
 USE Facturas

 CREATE  TABLE Producto(
	 proID int IDENTITY(1,1) NOT NULL,
	 nombre varchar(25) NOT NULL,
	 precio numeric(18,2),
	 modelo varchar(25),
	 cantidad smallint NOT NULL,
	 marca varchar(15),
	 fabricacion smalldatetime,
	 valoracion numeric(2,1),

	 constraint PK_Producto primary key
	 (
		proID ASC 
	 ),
	 CONSTRAINT UQ_PRODUCTOUNIO UNIQUE 
	 (
		nombre,MODELO,MARCA 
	 ),
	 CONSTRAINT CK_precio_no_negativo check
	 (
		precio >=0
	 ),
	 constraint CK_cantidad_mayor_cero check
	 (
		cantidad>0
	 ),
	 constraint CK_valor_no_negativo check
	 (
		valoracion>0
	 )
 
 )