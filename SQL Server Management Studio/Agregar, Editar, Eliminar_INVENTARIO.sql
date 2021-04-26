
create procedure agregarINVENTARIO

@Id_inventario int, @Id_Factura_venta NVARCHAR (20), @Id_producto int

as
begin

insert into INVENTARIO(Id_inventario, Id_Factura_venta, Id_producto)
values (@Id_inventario, @Id_Factura_venta, @Id_producto)
end 

create proc editarINVENTARIO

@Id_inventario int, @Id_Factura_venta NVARCHAR (20), @Id_producto int
as

update INVENTARIO set Id_inventario=@Id_inventario, Id_Factura_venta=@Id_Factura_venta, Id_producto=@Id_producto
where Id_inventario=Id_inventario

 create procedure eliminarINVENTARIO
 @Id_inventario int

 as
 begin

 delete from INVENTARIO

 where Id_inventario=@Id_inventario
 end 