
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

 ---------------------------------------------------------------------------------------------------------------------------------------------

 

create procedure agregarCREDITO

CREATE TABLE CLIENTES
(
@Id_cliente int, @Nombre_cliente NVARCHAR (20), @Apellido_cliente NVARCHAR (20)

as
begin

insert into CLIENTES(Id_cliente, Nombre_cliente, Apellido_cliente)
values (@Id_cliente, @Nombre_cliente, @Apellido_cliente)
end 


create procedure editarCLIENTES

@Id_cliente int, @Nombre_cliente NVARCHAR (20), @Apellido_cliente NVARCHAR (20)
as


update CLIENTES set Id_cliente=@Id_cliente, Nombre_cliente=@Nombre_cliente, Apellido_cliente=@Apellido_cliente
where Id_cliente=Id_cliente


 create procedure eliminarCLIENTES
@Id_cliente int

 as
 begin

 delete from CLIENTES

 where Id_cliente=@Id_cliente
 end 
