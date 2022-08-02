<?php 
headerTienda($data);

$subtotal = 0;
$total = 0;
foreach ($_SESSION['arrCarrito'] as $producto) {
	$subtotal += $producto['precio'] * $producto['cantidad'];
}
$total = $subtotal + COSTOENVIO;

?>
<script
    src="https://www.paypal.com/sdk/js?client-id=<?= IDCLIENTE ?>&currency=<?= CURRENCY ?>">
</script>
<script>
  paypal.Buttons({
    createOrder: function(data, actions) {
      return actions.order.create({
        purchase_units: [{
          amount: {
            value: <?= $total; ?>
          },
          description: "Compra de artículos en <?= NOMBRE_EMPESA ?> por <?= SMONEY.$total ?> ",
        }]
      });
    },
    onApprove: function(data, actions) {
      // This function captures the funds from the transaction.
      return actions.order.capture().then(function(details) {
      		let base_url = "<?= base_url(); ?>";
	        let dir = document.querySelector("#txtDireccion").value;
	        let ciudad = document.querySelector("#txtCiudad").value;
	        let inttipopago = 1; 
	        let request = (window.XMLHttpRequest) ? 
	                    new XMLHttpRequest() : 
	                    new ActiveXObject('Microsoft.XMLHTTP');
			let ajaxUrl = base_url+'/Tienda/procesarVenta';
			let formData = new FormData();
		    formData.append('direccion',dir);    
		   	formData.append('ciudad',ciudad);
			formData.append('inttipopago',inttipopago);
		   	formData.append('datapay',JSON.stringify(details));
		   	request.open("POST",ajaxUrl,true);
		    request.send(formData);
		    request.onreadystatechange = function(){
		    	if(request.readyState != 4) return;
		    	if(request.status == 200){
		    		let objData = JSON.parse(request.responseText);
		    		if(objData.status){
		    			window.location = base_url+"/tienda/confirmarpedido/";
		    		}else{
		    			swal("", objData.msg , "error");
		    		}
		    	}
		    }
      });
    }
  }).render('#paypal-btn-container');
</script>

<!-- Modal -->
<div class="modal fade" id="modalTerminos" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Términos y Condiciones</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="text-align: justify;">
		<b style="text-align:end;">Versión vigente: 13 de septiembre de 2021</b>
		<br>
		<br>
		Es requisito necesario para la adquisición de los productos que se ofrecen en este
		sitio, que lea y acepte los siguientes Términos y Condiciones que a continuación se
		redactan. El uso de nuestros servicios, así como la compra de nuestros productos
		implicará que usted ha leído y aceptado los Términos y Condiciones de Uso en el
		presente documento. Todos los productos que son ofrecidos por nuestro sitio web
		pudieran ser creadas, cobradas, enviadas o presentadas por una página web
		tercera y en tal caso estarían sujetas a sus propios Términos y Condiciones. 
		<br>
		En algunos casos, para adquirir un producto, será necesario el registro por parte del
		usuario, con ingreso de datos personales fidedignos y definición de una contraseña.
		El usuario puede elegir y cambiar la clave para su acceso de administración de la
		cuenta en cualquier momento, en caso de que se haya registrado y que sea
		necesario para la compra de alguno de nuestros productos. 
		<br>
		www.EventosVillegas.com no asume la responsabilidad en caso de que entregue dicha clave a terceros.
		Todas las compras y transacciones que se lleven a cabo por medio de este sitio
		web, están sujetas a un proceso de confirmación y verificación, el cual podría incluir
		la verificación del stock y disponibilidad de producto, validación de la forma de pago,
		validación de la factura (en caso de existir) y el cumplimiento de las condiciones
		requeridas por el medio de pago seleccionado. En algunos casos puede que se
		requiera una verificación por medio de correo electrónico.
		Los precios de los productos ofrecidos en esta Tienda Online son válidos solamente
		en las compras realizadas en este sitio web.
		<br>
		<br>
		<center><b>LICENCIA</b></center>
		<br>
		EventosVillegas a través de su sitio web concede una licencia para que los usuarios
		utilicen los productos que son vendidos en este sitio web de acuerdo a los Términos
		y Condiciones que se describen en este documento.
		<br>
		<br>
		<center><b> NO AUTORIZADO </b></center>
		<br>
		En caso de que aplique (para venta de software, templetes, u otro producto de
		diseño y programación) usted no puede colocar uno de nuestros productos,
		modificado o sin modificar, en un CD, sitio web o ningún otro medio y ofrecerlos
		para la redistribución o la reventa de ningún tipo.
		<br>
		<br>
		<center><b>PROPIEDAD</b></center>
		<br>
		Usted no puede declarar propiedad intelectual o exclusiva a ninguno de nuestros
		productos, modificado o sin modificar. Todos los productos son propiedad de los
		proveedores del contenido. En caso de que no se especifique lo contrario, nuestros
		productos se proporcionan sin ningún tipo de garantía, expresa o implícita. En
		ningún esta compañía será responsables de ningún daño incluyendo, pero no
		limitado a, daños directos, indirectos, especiales, fortuitos o consecuentes u otras
		pérdidas resultantes del uso o de la imposibilidad de utilizar nuestros productos.
		<br>
		<br>
		<center><b>POLÍTICA DE REEMBOLSO Y GARANTÍA</b></center>
		<br>
		En el caso de productos que sean mercancías irrevocables no-tangibles, no
		realizamos reembolsos después de que se envíe el producto, usted tiene la
		responsabilidad de entender antes de comprarlo. Le pedimos que lea
		cuidadosamente antes de comprarlo. Hacemos solamente excepciones con esta
		regla cuando la descripción no se ajusta al producto. Hay algunos productos que
		pudieran tener garantía y posibilidad de reembolso pero este será especificado al
		comprar el producto. En tales casos la garantía solo cubrirá fallas de fábrica y sólo
		se hará efectiva cuando el producto se haya usado correctamente. La garantía no
		cubre averías o daños ocasionados por uso indebido. Los términos de la garantía
		están asociados a fallas de fabricación y funcionamiento en condiciones normales
		de los productos y sólo se harán efectivos estos términos si el equipo ha sido usado
		correctamente. 
		<br>
		Esto incluye:
		<br>
		<ul>
			<li> De acuerdo a las especificaciones técnicas indicadas para cada producto. </li>
			<li> En condiciones ambientales acorde con las especificaciones indicadas por el
				fabricante.</li>
			<li>En uso específico para la función con que fue diseñado de fábrica.</li>
			<li>En condiciones de operación eléctricas acorde con las especificaciones y
				tolerancias indicadas.</li>
		</ul>
		<br>
		<center><b>COMPROBACIÓN ANTIFRAUDE</b></center>
		La compra del cliente puede ser aplazada para la comprobación antifraude.
		También puede ser suspendida por más tiempo para una investigación más
		rigurosa, para evitar transacciones fraudulentas.
		<br>
		<br>
		<center><b>PRIVACIDAD</b></center>
		<br>
		Este www.EventosVillegas.com garantiza que la información personal que usted envía
		cuenta con la seguridad necesaria. Los datos ingresados por usuario o en el caso
		de requerir una validación de los pedidos no serán entregados a terceros, salvo que
		deba ser revelada en cumplimiento a una orden judicial o requerimientos legales.
		La suscripción a boletines de correos electrónicos publicitarios es voluntaria y podría
		ser seleccionada al momento de crear su cuenta.
		<br>
		EventosVillegas reserva los derechos de cambiar o de modificar estos términos sin previo
		aviso.
		<br>
		<br>
		<center><b>POLÍTICA DE PRIVACIDAD</b></center>
		<br>
		En cumplimiento a lo establecido en el artículo 76 BIS de la Ley Federal de
		Protección al Consumidor y demás relativos y a los contenidos en el Capítulo II “De
		los principios de Protección de Datos Personales” de la Ley Federal de Protección
		de Datos Personales en Posesión de los Particulares vigentes, te informamos que
		los datos que nos facilites a través del sitio web www.EventosVillegas.mx y las
		aplicaciones de móvil (en adelante y conjuntamente, el “Sitio”) pasarán a formar
		parte de una Base de Datos de la cual es responsable de tratamiento:
		<br>
		El presente Política de Privacidad establece los términos en que EventosVillegas usa y
		protege la información que es proporcionada por sus usuarios al momento de utilizar
		su sitio web. Esta compañía está comprometida con la seguridad de los datos de
		sus usuarios. Cuando le pedimos llenar los campos de información personal con la
		cual usted pueda ser identificado, lo hacemos asegurando que sólo se empleará de
		acuerdo con los términos de este documento. Sin embargo, esta Política de
		Privacidad puede cambiar con el tiempo o ser actualizada por lo que le
		recomendamos y enfatizamos revisar continuamente esta página para asegurarse
		que está de acuerdo con dichos cambios.
		<br>
		<b>Información que es recogida</b>
		<br>
		Nuestro sitio web podrá recoger información personal, por ejemplo:
		<br>
		Nombre, información de contacto como su dirección de correo electrónica e
		información demográfica. Así mismo cuando sea necesario podrá ser requerida
		información específica para procesar algún pedido o realizar una entrega o
		facturación.
		<br>
		<b>Uso de la información recogida</b>
		<br>
		Nuestro sitio web emplea la información con el fin de proporcionar el mejor servicio
		posible, particularmente para mantener un registro de usuarios, de pedidos en caso
		que aplique, y mejorar nuestros productos y servicios. Es posible que sean
		enviados correos electrónicos periódicamente a través de nuestro sitio con ofertas
		especiales, nuevos productos y otra información publicitaria que consideremos
		relevante para usted o que pueda brindarle algún beneficio, estos correos
		electrónicos serán enviados a la dirección que usted proporcione y podrán ser
		cancelados en cualquier momento.
		<br>
		EventosVillegas está altamente comprometido para cumplir con el compromiso de
		mantener su información segura. Usamos los sistemas más avanzados y los
		actualizamos constantemente para asegurarnos que no exista ningún acceso no
		autorizado.
		<br>
		<b>Enlaces a Terceros</b>
		<br>
		Este sitio web pudiera contener en laces a otros sitios que pudieran ser de su
		interés. Una vez que usted de clic en estos enlaces y abandone nuestra página, ya
		no tenemos control sobre al sitio al que es redirigido y por lo tanto no somos
		responsables de los términos o privacidad ni de la protección de sus datos en esos
		otros sitios terceros. Dichos sitios están sujetos a sus propias políticas de privacidad
		por lo cual es recomendable que los consulte para confirmar que usted está de
		acuerdo con estas.
		<br>
		<b>Control de su información personal</b>
		<br>
		Usted puede restringir la recopilación o el uso de la información personal que es
		proporcionada a nuestro sitio web. Cada vez que se le solicite rellenar un
		formulario, como el de alta de usuario, puede marcar o desmarcar la opción de
		recibir información por correo electrónico.<br>
		Esta compañía no venderá, cederá ni distribuirá la información personal que es
		recopilada sin su consentimiento, salvo que sea requerido por un juez con un orden
		judicial.<br>
		EventosVillegas Se reserva el derecho de cambiar los términos de la presente Política de
		Privacidad en cualquier momento.
		<br>
		<br>
		<center><b>COOKIES</b></center>
		<br>
		En cumplimiento a lo establecido en el artículo 76 BIS de la Ley Federal de
		Protección al Consumidor y demás relativos y a los contenidos en el Capítulo II “De
		los principios de Protección de Datos Personales” de la Ley Federal de Protección
		de Datos Personales en Posesión de los Particulares vigentes, te informamos que
		los datos que nos facilites a través del sitio web www.EventosVillegas.mx pasaran a
		formar parte de una Base de Datos de la cual es responsable de tratamiento:
		Nuestro sitio web emplea las cookies para poder identificar las páginas que son
		visitadas y su frecuencia. Esta información es empleada únicamente para análisis
		estadístico y después la información se elimina de forma permanente. Usted puede
		eliminar las cookies en cualquier momento desde su ordenador. Sin embargo las
		cookies ayudan a proporcionar un mejor servicio de los sitios web, estás no dan
		acceso a información de su ordenador ni de usted, a menos de que usted así lo
		quiera y la proporcione directamente noticias.
		Utilizamos las siguientes cookies:
		<br>
		Cookies estrictamente necesarias. Estas son las cookies requeridas para el
		funcionamiento de nuestro Sitio. Incluyen, por ejemplo, cookies que te permiten
		iniciar sesión en áreas seguras de nuestro Sitio o utilizar una cesta de la compra.
		Cookies analíticas/de rendimiento. Nos permiten reconocer y contar el número
		de visitantes y ver cómo se desplazan los visitantes en nuestro Sitio cuando lo están
		utilizando. Esto nos ayuda a mejorar el funcionamiento de nuestro Sitio, por ejemplo,
		asegurándonos de que los visitantes encuentran lo que están buscando fácilmente.
		Usted puede aceptar o negar el uso de cookies, sin embargo, la mayoría de
		navegadores aceptan cookies automáticamente pues sirve para tener un mejor
		servicio web. También usted puede cambiar la configuración de su ordenador para
		declinar las cookies. Si se declinan es posible que no pueda utilizar algunos de
		nuestros servicios.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

 <br><br><br>
<hr>
	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="<?= base_url() ?>" class="stext-109 cl8 hov-cl1 trans-04">
				Inicio
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>
			<span class="stext-109 cl4">
				<?= $data['page_title'] ?>
			</span>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
				<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-l-25 m-r--38 m-lr-0-xl">
					<div>
					<?php 
						if(isset($_SESSION['login'])){
					?>
						<div>
							<label for="tipopago">Dirección de envío</label>
							<div class="bor8 bg0 m-b-12">
								<input id="txtDireccion" class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="state" placeholder="Dirección de envío">
							</div>
							<div class="bor8 bg0 m-b-22">
								<input id="txtCiudad" class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="postcode" placeholder="Ciudad / Estado">
							</div>
						</div>
					<?php }else{ ?>

						<ul class="nav nav-tabs" id="myTab" role="tablist">
						  <li class="nav-item">
						    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#login" role="tab" aria-controls="home" aria-selected="true">Iniciar Sesión</a>
						  </li>
						  <li class="nav-item">
						    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#registro" role="tab" aria-controls="profile" aria-selected="false">Crear cuenta</a>
						  </li>
						</ul>
						<div class="tab-content" id="myTabContent">
						  <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="home-tab">
						  	<br>
						  	<form id="formLogin">
							  <div class="form-group">
							    <label for="txtEmail">Usuario</label>
							    <input type="email" class="form-control" id="txtEmail" name="txtEmail">
							  </div>
							  <div class="form-group">
							    <label for="txtPassword">Contraseña</label>
							    <input type="password" class="form-control" id="txtPassword" name="txtPassword">
							  </div>
							  <button type="submit" class="btn btn-primary">Iniciar sesión</button>
							</form>

						  </div>
						  <div class="tab-pane fade" id="registro" role="tabpanel" aria-labelledby="profile-tab">
						  	<br>
						  	<form id="formRegister"> 
						 		<div class="row">
									<div class="col col-md-6 form-group">
										<label for="txtNombre">Nombres</label>
										<input type="text" class="form-control valid validText" id="txtNombre" name="txtNombre" required="">
									</div>
									<div class="col col-md-6 form-group">
										<label for="txtApellido">Apellidos</label>
										<input type="text" class="form-control valid validText" id="txtApellido" name="txtApellido" required="">
									</div>
						 		</div>
						 		<div class="row">
									<div class="col col-md-6 form-group">
										<label for="txtTelefono">Teléfono</label>
										<input type="text" class="form-control valid validNumber" id="txtTelefono" name="txtTelefono" required="" onkeypress="return controlTag(event);">
									</div>
									<div class="col col-md-6 form-group">
										<label for="txtEmailCliente">Email</label>
										<input type="email" class="form-control valid validEmail" id="txtEmailCliente" name="txtEmailCliente" required="">
									</div>
						 		</div>
								<!--
								 <div class="row">
									<div class="col col-md-6 form-group">
										<label for="txtPassword">Contraseña</label>
										<input type="password" class="form-control valid validPassword" id="txtPassword" name="txtPassword" required="">
									</div>
						 		</div> -->
								<button type="submit" class="btn btn-primary">Regístrate</button>
						 	</form>
						  </div>
						</div>

					<?php } ?>
					</div>
				</div>
			</div>

			<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
				<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
					<h4 class="mtext-109 cl2 p-b-30">
						Resumen
					</h4>

					<div class="flex-w flex-t bor12 p-b-13">
						<div class="size-208">
							<span class="stext-110 cl2">
								Subtotal:
							</span>
						</div>

						<div class="size-209">
							<span id="subTotalCompra" class="mtext-110 cl2">
								<?= SMONEY.formatMoney($subtotal) ?>
							</span>
						</div>

						<div class="size-208">
							<span class="stext-110 cl2">
								Envío:
							</span>
						</div>

						<div class="size-209">
							<span class="mtext-110 cl2">
								<?= SMONEY.formatMoney(COSTOENVIO) ?>
							</span>
						</div>
					</div>
					<div class="flex-w flex-t p-t-27 p-b-33">
						<div class="size-208">
							<span class="mtext-101 cl2">
								Total:
							</span>
						</div>

						<div class="size-209 p-t-1">
							<span id="totalCompra" class="mtext-110 cl2">
								<?= SMONEY.formatMoney($total) ?>
							</span>
						</div>
					</div>
					<hr>
<?php 
	if(isset($_SESSION['login'])){
?>
					<div id="divMetodoPago" class="notblock">
						<div id="divCondiciones">
							<input type="checkbox" id="condiciones" >
							<label for="condiciones"> Aceptar </label>
							<a href="#" data-toggle="modal" data-target="#modalTerminos" > Términos y Condiciones </a>
						</div>
						<div id="optMetodoPago" class="notblock">	
							<hr>					
							<h4 class="mtext-109 cl2 p-b-30">
								Método de pago
							</h4>
							<div class="divmetodpago">
								<div>
									<label for="paypal">
										<input type="radio" id="paypal" class="methodpago" name="payment-method" checked="" value="Paypal">
										<img src="<?= media()?>/images/img-paypal.jpg" alt="Icono de PayPal" class="ml-space-sm" width="74" height="20">
									</label>
								</div>
								<div>
									<label for="contraentrega">
										<input type="radio" id="contraentrega" class="methodpago" name="payment-method" value="CT">
										<span>Contra Entrega</span>
									</label>
								</div>
								<div id="divtipopago" class="notblock" >
									<label for="listtipopago">Tipo de pago</label>
									<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
										<select id="listtipopago" class="js-select2" name="listtipopago">
										<?php 
											if(count($data['tiposPago']) > 0){ 
												foreach ($data['tiposPago'] as $tipopago) {
													if($tipopago['idtipopago'] != 1){
										 ?>
										 	<option value="<?= $tipopago['idtipopago']?>"><?= $tipopago['tipopago']?></option>
										<?php
													}
												}
										 } ?>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
									<br>
									<button type="submit" id="btnComprar" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">Procesar pedido</button>
								</div>
								<div id="divpaypal">
									<div>
										<p>Para completar la transacción, te enviaremos a los servidores seguros de PayPal.</p>
									</div>
									<br>
									<div id="paypal-btn-container"></div>
								</div>
							</div>
						</div>
					</div>			
<?php } ?>
				</div>
			</div>
		</div>
	</div>

<?php 
	footerTienda($data);
 ?>
	