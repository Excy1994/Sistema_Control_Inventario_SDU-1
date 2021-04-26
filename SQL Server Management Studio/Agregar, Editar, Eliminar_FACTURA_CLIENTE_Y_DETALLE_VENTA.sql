

create procedure agregarFACTURA_VENTA

@Id_Factura_venta NVARCHAR (20), @Fecha datetime, @Numero_Fcatura Nvarchar(15), @Id_cliente int, @Total decimal

as
begin

insert into FACTURA_VENTA(Id_Factura_venta, Fecha, Numero_Fcatura, Id_cliente, Total)
values (@Id_Factura_venta, @Fecha, @Numero_Fcatura, @Id_cliente, @Total)
end 


create procedure editarFACTURA_VENTA

@Id_Factura_venta NVARCHAR (20), @Fecha datetime, @Numero_Fcatura Nvarchar(15), @Id_cliente int, @Total decimal
as


update FACTURA_VENTA set Id_Factura_venta=@Id_Factura_venta, Fecha=@Fecha, Numero_Fcatura=@Numero_Fcatura, Id_cliente=@Id_cliente, Total=@Total
where Id_Factura_venta=Id_Factura_venta


 create procedure eliminarFACTURA_VENTA
 @Id_Factura_venta NVARCHAR (20)

 as
 begin

 delete from FACTURA_VENTA

 where Id_Factura_venta=@Id_Factura_venta
 end 

 -----------------------------------------------------------------------------------------------------------------------
 ---DETALLE VENTA
create procedure agregarDETALLE_VENTA

@id_detalle_Venta nvarchar(20), @id_Factura_compra nvarchar (30), @Cantidad NVARCHAR (40), @ID_producto int,
@Descripcion nvarchar (50), @Precio_Unitario nvarchar(15), @Total decimal

as
begin

insert into DETALLE_VENTA(id_detalle_Venta, id_Factura_compra, Cantidad, Id_cliente, ID_producto, Descripcion,
Precio_Unitario, Total)

values (@id_detalle_Venta, @id_Factura_compra, @Cantidad, @Id_cliente, @ID_producto, @Descripcion,
@Precio_Unitario, @Total)
end 


create procedure editarDETALLE_VENTA

@id_detalle_Venta nvarchar(20), @id_Factura_compra nvarchar (30), @Cantidad NVARCHAR (40), @ID_producto int,
@Descripcion nvarchar (50), @Precio_Unitario nvarchar(15), @Total decimal

as


update DETALLE_VENTA set id_detalle_Venta=@id_detalle_Venta, id_Factura_compra=@id_Factura_compra, Cantidad=@Cantidad, ID_producto=@ID_producto,
Descripcion=@Descripcion, Precio_Unitario=@Precio_Unitario, Total=@Total

where id_detalle_Venta=id_detalle_Venta


 create procedure eliminarDETALLE_VENTA
 @id_detalle_Venta nvarchar(20)

 as
 begin

 delete from DETALLE_VENTA

 where id_detalle_Venta=@id_detalle_Venta
 end 
