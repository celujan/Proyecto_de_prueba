SubProceso pie(a)
	Escribir "¡¡¡Compra Exitosa!!!"
	Escribir "--------------------------------------"
	Escribir "     @Nicole@Claudiacom"
	Escribir "--------------------------------------"
FinSubProceso
Funcion vdr <- Menu
	Escribir "<<<<<<<<<<<     ALMACÉN    >>>>>>>>>>>>>"
	Escribir "-1-         Listar Productos           "
	Escribir "-2-         Agregar Productos          "
	Escribir "-3-         Listar Clientes            "
	Escribir "-4-         Agregar Clientes           "
	Escribir "-5-         Realizar Venta             "
	Escribir ""
	Escribir "-0-             Salir                      "
	leer vdr
FinFuncion
Proceso Proyecto_fasePrueba
	Dimension producto(10);           
	Dimension precio(10);            
	Dimension cliente(10);         
	posicion = 0
	ppv = 0 // puntero primero vacío
	
    producto(0)= "Gelatina";    
    producto(1)= "Azúcar"; 
    producto(2)= "Yerba";
	producto(3)= "Huevos";    
    producto(4)= "Leche"; 
    producto(5)= "Aceite";
	producto(6) = "Arroz";
	
    cliente(0)= "Sr. Lozada"; 
    cliente(1)= "Sra, Pérez"; 
    cliente(2)= "Sra. Montero";
	cliente(3)= "Sr. Sáez"; 
    cliente(4)= "Sra, Ponce"; 
    cliente(5)= "Sra. López";
	cliente(6)= "Sr. Enrique"; 
	
	precio(0)= 1200; 
    precio(1)= 1500; 
    precio(2) = 2050;
	precio(3)= 200; 
    precio(4)= 1700; 
    precio(5)= 1900;
	
	Repetir
		opc = menu
		Segun opc Hacer
			
			Caso 1	:
				Para i<-0 Hasta 9
					si producto(i) <> "" Entonces
						
						Escribir producto(i)
					FinSi
				FinPara 
				Escribir "-----LISTA LLENA-----"
				
			caso 2 :
				escribir"Ingrese un producto"
				i=-1
				Repetir
					i=i+1
				Hasta Que producto(i)=""
				leer producto(i)
			caso 3 :
				
				Escribir "Listar Clientes"
				Escribir "Los clientes que ingresaron al local fueron: "
				Para i<-0 Hasta 9
					si cliente(i) <> "" Entonces
						
						Escribir cliente(i)
					FinSi
				Fin Para
				Escribir "¡¡¡Bienvenidos!!!"
				
			caso 4 :
				Escribir "Ingrese el nombre del cliente: "
				i=-1
				Repetir
					i=i+1
				Hasta Que cliente(i)=""
				Leer cliente(i)
			caso 5 :
				Escribir "Realizar Venta"
				i=0
				Repetir
					
					Si cliente(i) <> "" Entonces
						Escribir i "-" cliente(i) + "      " i "-" producto(i)+ "     " i "-" precio(i)
						i= i+1
					Fin Si
					
				Hasta Que i=9
				Escribir "Seleccione el nombre cliente: "
				Leer client
				Escribir "seleccione un producto: "
				Leer prod
				Escribir "Ingrese el precio/costo del producto: "
				Leer costo
				Escribir "Ingrese la cantidad de productos a llevar "
				Leer cantid
				prod= costo * cantid
				Escribir client ": Precio total a pagar: " , prod
		FinSegun
		
	Hasta Que opc == 0
	pie(a)
	Escribir ""
FinProceso