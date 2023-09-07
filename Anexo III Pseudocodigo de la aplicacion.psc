Algoritmo cargas_de_pedidos
	Definir productos, nombre_producto, opcion_continuar, nombre_apellido, dias, franja_horaria, mail, dias_habilitados, numero_de_contacto Como Caracter;
	Definir ventas, cantidad_articulos, opcion_producto, i, k, z, cantidad, franja_habilitada, opcion_dia, opcion_franja Como Entero
	Dimension productos[5]; // para que la prueba sea mas corta solo se cargan 5 productos, pero la idea es que el numero de productos sea acorde a las necesidades de la empresa.
	Dimension ventas[100,2];
	Dimension dias[5]; // solo entrega de lunes a viernes
	Dimension franja_horaria[3]; // divide los horarios en 3 franjas
	cv=0;
	
	
	// Pantalla para que los usuarios de la EMPRESA carguen los parametros iniciales.
	Escribir "_______________________________";
	Escribir "      Interfaz Empresa";
	Escribir "_______________________________";
	Escribir " ";
	Escribir "         Bienvenido";
	Escribir " ";
	Escribir " ";
	Escribir "Ingrese los productos / art�culos a vender";
	Escribir "  ";
	
	
	
	// para que LA EMPRESA cargue los productos disponibles establecemos un arreglo
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Nombre del producto / art�culo N� ", i;
		Leer nombre_producto;
		productos[i] = nombre_producto;
	FinPara
	
	Escribir " ";
	// Para que muestre los productos cargados
	Escribir "Listado de productos ingresados: ";
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir i, ". ", productos[i];
	Fin Para
	
	Escribir " ";
	// Para que LA EMPRESA cargue los d�as habilitados
	Para k <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese los d�as habilitados para entrega. D�a ", k;
		Leer dias_habilitados;
		dias[k] = dias_habilitados;
	FinPara
	
	Escribir " "
	// Para que muestre los d�as cargados
	Escribir "Listado d�as habilitados ingresados: ";
	Para k <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir k, ". ", dias[k];
	Fin Para
	
	Escribir " ";
	//Para que LA EMPRESA cargue las franjas horarias
	
	Para z <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese las franjas horarias habilitadas. Franja ", z;
		Leer franja_horaria[z];
	Fin Para
	Escribir " ";
	
	// Para que muestre las franjas cargadas
	Escribir "Listado de franjas horarias ingresadas: ";
	Para z <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir z, ". ", franja_horaria[z];
	Fin Para
	


	
	//  A partir de ac� comienza la interfaz que tendr�an habilitados los clientes, compradores.
	Escribir "_____________________________";
	Escribir " ";
	Escribir "          Interfaz Cliente    ";
	Escribir "_____________________________";
	Escribir " ";
	Escribir "            Bienvenidos"
	Escribir "      Fruter�a La Productora"
	Escribir " "
	
	// Se ingresan los datos identificatorios del cliente
	Escribir "Por favor escriba su Nombre y Apellido";
	Leer nombre_apellido;
	Escribir " ";
	
	Escribir "Ingrese un n�mero telef�nico de contacto";
	Leer numero_de_contacto;
	
	
	
	
	
	
	
	
	Escribir " ";
	
	Escribir "Ingrese su mail";
	Leer mail;
	Escribir " ";
	
	// Comienza la elecci�n de productos
	Escribir "Los productos disponibles son: ";
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir i, ". ", productos[i];
	Fin Para
	
	Escribir " ";
	Escribir "Escriba el c�digo num�rico del 1er. producto a comprar, luego presione ENTER.  ";
	Escribir " ";
	
	Leer opcion_producto;
	
	Repetir
		Si opcion_producto >= 6 O opcion_producto < 1 Entonces // ingresa una opci�n no valida le solicita una nueva
			Repetir
				Escribir "Eligi� una opci�n no v�lida ";
				Escribir "Seleccione una opci�n v�lida";
				Leer opcion_producto;
				
			Hasta Que opcion_producto < 6;
			// reci�n cuando la opci�n es valida continua
		Sino
			
			Escribir "Ud. seleccion� ", productos[opcion_producto];
		
			
		Fin si
		
		cv=cv+1
		
		// Una vez seleccionado el producto se le pide que ingrese la cantidad deseada
		Escribir "Indique la cantidad de Kg. a llevar. ** Recuerde que no se fracciona, la unidad es el Kg ** ";
		leer cantidad;
		
		// se hace el resumen del el producto y peso que solicit�
		Escribir "Solicit� ", cantidad, " Kg de ", productos[opcion_producto];
		
		ventas[cv,1]= opcion_producto;
		ventas[cv,2]= cantidad;
		
		// se lo invita a decidir si quiere comprar algo mas
		Escribir " ";
		Escribir "Desea seleccionar otro producto? S/N   ** Por favor respete las MAYUSCULAS ** ";
		Escribir " ";
		Leer opcion_continuar;
		
		
		Si opcion_continuar = "S" Entonces
			Escribir "Qu� producto desea? ";
			Escribir " ";
			Escribir "Digite la opci�n deseada, ingresando el c�digo num�rico del art�culo";
			
			Para i <- 1 Hasta 5 Con Paso 1 Hacer
				Escribir i, ". ", productos[i];
			Fin Para
			
			Leer opcion_producto;
			
		SiNo
			
		Fin Si
	Hasta Que opcion_continuar = "N";
	
	//Una vez definidos los productos se pasa a la etapa de definir el d�a a retirar y luego la franja horaria
	Escribir " ";
	Escribir "Seleccione el d�a para retirar su pedido";
	Escribir " ";
	
	// Muestra los d�as disponibles pre-cargados 
	Escribir "Seleccione el c�digo num�rico del d�a de retiro: ";
	Para k <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir k, ". ", dias[k];
	Fin Para
	
	Leer opcion_dia;

	Si opcion_dia >= 6 O opcion_dia < 1 Entonces // ingresa una opci�n no valida le solicita una nueva
		Repetir
			Escribir "Eligi� una opci�n no v�lida ";
			Escribir "Seleccione una opci�n v�lida";
			Leer opcion_dia;
			
		Hasta Que opcion_dia < 6;
		// reci�n cuando la opci�n es valida continua
		Sino
	Fin Si
		
	
	// Muestra las franjas horarias pre-cargadas
	Escribir "Seleccione el c�digo num�rico del horario para retirar su pedido";
	Para z <- 1 Hasta 3 Con Paso 1 Hacer
		Escribir z, ". ", franja_horaria[z];
	Fin Para
	
	Leer opcion_franja;
	Si opcion_franja >= 4  O opcion_franja < 1 Entonces // ingresa una opci�n no valida le solicita una nueva
		Repetir
			Escribir "Eligi� una opci�n no v�lida ";
			Escribir "Seleccione una opci�n v�lida";
			Leer opcion_franja;
			
		Hasta Que opcion_franja < 4;
		// reci�n cuando la opci�n es valida continua
	Sino
	Fin Si
	Escribir "______________________________________________"
	
	// Realiza un resumen del pedido con los datos tanto de cliente como de la empresa
	Escribir " ";
	Escribir "Cliente: ", nombre_apellido;
	Escribir "Tel�fono de contacto: ", numero_de_contacto;
	Escribir "Mail:", mail;
	Escribir " ";
	Escribir "Su pedido: ";
	
	Para i <- 1 Hasta cv Con Paso 1 Hacer
	Escribir i, ") " productos[ventas[i,1]], "  " ventas[i,2] " Kg.";
	FinPara
	
	Escribir "Ser� preparado para ser retirado el ", dias[opcion_dia], " de ", franja_horaria[opcion_franja];
	Escribir "Av. Incas 4800, CABA - Tel 7586-5698" ;
	Escribir "Fruter�a La Productora";
	Escribir "Muchas Gracias por su pedido";
	Escribir "______________________________________________";
	
FinAlgoritmo