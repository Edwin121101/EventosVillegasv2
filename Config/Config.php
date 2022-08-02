<?php 
	
	const BASE_URL = "http://localhost/EventosVillegas";

	//Zona horaria
	date_default_timezone_set('America/Mexico_City');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	//const DB_PORT = "3308";
	const DB_NAME = "eventos";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "utf8";

	//Para envío de correo
	const ENVIRONMENT = 0; // Local: 0, Produccón: 1;

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "$";
	const CURRENCY = "MXN";

	//Api PayPal
	//SANDBOX PAYPAL
	const URLPAYPAL = "https://api-m.sandbox.paypal.com";
	const IDCLIENTE = "AU92wANsKmNR-78Hhe7JjA-1g_SR4WYA3LNov4b-7hp3fLm3fbsXFUrRTPv01t8k5RtKkNt4v_qg525-";
	// const SECRET = "";
	//Datos envio de correo
	const NOMBRE_REMITENTE = "EventosVillegas";
	const EMAIL_REMITENTE = "no-reply@eventosvillegas.com";
	const NOMBRE_EMPESA = "EventosVillegas";
	const WEB_EMPRESA = "www.EventosVillegas.com";

	const DESCRIPCION = "La mejor tienda en línea con artículos de moda.";
	const SHAREDHASH = "EventosVillegas";

	//Datos Empresa
	const DIRECCION = "Edwin Ivan Villegas Dorantes";
	const TELEMPRESA = "+(52)55xx-xx-xx-xx";
	const WHATSAPP = "+5255xxxxxxxx";
	const EMAIL_EMPRESA = "eventosvillegas@gmail.com";
	const EMAIL_PEDIDOS = "eventosvillegas@gmail.com"; 
	const EMAIL_SUSCRIPCION = "eventosvillegas@gmail.com";
	const EMAIL_CONTACTO = "eventosvillegas@gmail.com";

	const CAT_SLIDER = "1,2,3";
	const CAT_BANNER = "4,17,21,30,34";
	const CAT_PASADOS = "4,5,6,7,8,10,11,12,13,14";
	const CAT_PROXIMOS = "15,16,17,18,19,20,21,22,23,24";
	const CAT_OFERTA = "25,26,27,28,29,30,31,32,33,34,35";
	const CAT_FOOTER = "1,2,3";
	// El #39 lo borre 

	//Datos para Encriptar / Desencriptar
	const KEY = 'edwin';
	const METHODENCRIPT = "AES-128-ECB";

	//Envío
	const COSTOENVIO = 30;

	//Módulos
	const MDASHBOARD = 1;
	const MUSUARIOS = 2;
	const MCLIENTES = 3;
	const MPRODUCTOS = 4;
	const MPEDIDOS = 5;
	const MCATEGORIAS = 6;
	const MSUSCRIPTORES = 7;
	const MDCONTACTOS = 8;
	const MDPAGINAS = 9;

	//Páginas
	const PINICIO = 1;
	const PTIENDA = 2;
	const PCARRITO = 3;
	// const PNOSOTROS = 4;
	// const PCONTACTO = 5;
	// const PPREGUNTAS = 6;
	const PTERMINOS = 7;
	const PSUCURSALES = 8;
	const PERROR = 9;


	//Roles
	const RADMINISTRADOR = 1;
	const RSUPERVISOR = 2;
	const RCLIENTES = 7;

	const STATUS = array('Completo','Aprobado','Cancelado','Reembolsado','Pendiente','Entregado');

	//Productos por página
	const CANTPORDHOME = 8;
	const PROPORPAGINA = 4;
	const PROCATEGORIA = 4;
	const PROBUSCAR = 4;

	//REDES SOCIALES
	const FACEBOOK = "";
	const INSTAGRAM = "";
	

 ?>