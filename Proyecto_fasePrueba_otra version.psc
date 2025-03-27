SubProceso compraDeClientes(cliente)
	Escribir "Los clientes que ingresaron al local fueron: "
	Para posicion <- 0 Hasta 2
		Escribir "--------> ", cliente(posicion)
	Fin Para
Fin SubProceso

SubProceso agregarPrecio(precio)
	Si precio(0) = 1200 Y precio(1) = 1500 Y precio(2) = 2050 Entonces
		Escribir "El precio del primer producto es: ", precio(0)
		Escribir "El precio del segundo producto es: ", precio(1)
		Escribir "El precio del tercer producto es: ", precio(2)
	SiNo
		Escribir "No coincide el precio"
	Fin Si
Fin SubProceso

SubProceso presentarProductos(producto)
	Escribir "********** Oferta del día **********"
	Para posicion <- 0 Hasta 2
		Escribir producto(posicion)
	Fin Para
Fin SubProceso

SubProceso facturarProducto(producto, precio, cliente, nroCliente, nroPro, cantid, facturaProducto, facturaCantidad, facturaPrecio, facturaSubtotal, compraCliente, ppv)
	facturaProducto(ppv) = producto(nroPro)
	facturaCantidad(ppv) = cantid
	facturaPrecio(ppv) = precio(nroPro)
	facturaSubtotal(ppv) = precio(nroPro) * cantid
	compraCliente(ppv) = cliente(nroCliente)
	Escribir "Factura registrada exitosamente."
	ppv = ppv + 1
	//Devolver ppv
Fin SubProceso

Proceso Proyecto_fasePrueba
	Dimension producto(3), facturaProducto(3), facturaSubtotal(3)    
	Dimension precio(3), facturaCantidad(3), compraCliente(3)
	Dimension cliente(3), facturaPrecio(3) 
	posicion = 0
	ppv = 0 // Puntero al primer índice vacío
	
	// Inicialización de datos
	producto(0) = "Gelatina"; producto(1) = "Azúcar"; producto(2) = "Yerba"
	precio(0) = 1200; precio(1) = 1500; precio(2) = 2050
	cliente(0) = "Sr. Lozada"; cliente(1) = "Sra. Pérez"; cliente(2) = "Sra. Montero"
	
	Escribir ""
	presentarProductos(producto)
	Escribir ""
	agregarPrecio(precio)
	Escribir ""
	compraDeClientes(cliente)
	Escribir ""
	
	// Solicitud de datos para facturación
	Escribir "Ingrese el cliente del día (0-2): "
	Leer nroCliente
	Escribir "Ingrese el nro de producto para facturar (0-2): "
	Leer nroPro
	Escribir "Cantidad: " sin saltar
	Leer cantid
	
	// Facturación
	//ppv = facturarProducto(producto, precio, cliente, nroCliente, nroPro, cantid, facturaProducto, facturaCantidad, facturaPrecio, facturaSubtotal, compraCliente, ppv)
	
	// Mostrar factura
	Escribir "**** Facturación ****"
	Para i = 0 Hasta 2
		Si facturaProducto(i) <> "" Entonces
			Escribir compraCliente(i), " - ", facturaProducto(i), " - ", facturaCantidad(i), " - ", facturaPrecio(i), " - ", facturaSubtotal(i)
		FinSi
	FinPara
FinProceso

