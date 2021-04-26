

create procedure agregarCREDITO

@Id_factura NVARCHAR (16), @Id_Factura_venta NVARCHAR (20), @Id_cliente int, @Monto NVARCHAR (30)
as
begin

insert into CREDITO(Id_factura, Id_Factura_venta, Id_cliente, Monto)
values (@Id_factura, @Id_Factura_venta, @Id_cliente, @Monto)
end 


create procedure editarCREDITO

@Id_factura NVARCHAR (16), @Id_Factura_venta NVARCHAR (20), @Id_cliente int, @Monto NVARCHAR (30)
as


update CLIENTE set Id_factura=@Id_factura, Id_Factura_venta=@Id_Factura_venta, Id_cliente=@Id_cliente, Monto=@Monto
where Id_factura=Id_factura


 create procedure eliminarCREDITO
 @Id_factura NVARCHAR (20)

 as
 begin

 delete from CREDITO

 where Id_factura=@Id_factura
 end 

 --------------------------------------------------------------------------------------------------------


 create procedure agregarPRODUCTOS

@ID_producto int, @Id_Factura_venta NVARCHAR (20), @Id_cliente int, @ID_categoria  int, @id_Factura_compra nvarchar (30),
@Nombre_producto NVARCHAR (35), @Precio INT, @Cantidad NVARCHAR (20), @Marca NVARCHAR (15), @Color NVARCHAR (10), @Fecha_Vencimiento nvarchar(20)

as
begin

insert into PRODUCTOS(ID_producto, Id_Factura_venta, Id_cliente, ID_categoria, id_Factura_compra, Nombre_producto, Precio,
Cantidad, Marca, Color, Fecha_Vencimiento)

values (@ID_producto, @Id_Factura_venta, @Id_cliente, @ID_categoria, @id_Factura_compra, @Nombre_producto, @Precio,
@Cantidad, @Marca, @Color, @Fecha_Vencimiento)
end 


create procedure editarPRODUCTOS

@ID_producto int, @Id_Factura_venta NVARCHAR (20), @Id_cliente int, @ID_categoria  int, @id_Factura_compra nvarchar (30),
@Nombre_producto NVARCHAR (35), @Precio INT, @Cantidad NVARCHAR (20), @Marca NVARCHAR (15), @Color NVARCHAR (10), @Fecha_Vencimiento nvarchar(20)
as


update PRODUCTOS set ID_producto=@ID_producto, Id_Factura_venta=@Id_Factura_venta, Id_cliente=@Id_cliente, ID_categoria=@ID_categoria, 
id_Factura_compra=@id_Factura_compra, Nombre_producto=@Nombre_producto, Precio=@Precio, Cantidad=@Cantidad, Marca=@Marca, Color=@Color, Fecha_Vencimiento=@Fecha_Vencimiento

where ID_producto=ID_producto


 create procedure eliminarPRODUCTOS
 @ID_producto int

 as
 begin

 delete from PRODUCTOS

 where ID_producto=@ID_producto
 end 