<?php 
	headerTienda($data);
	$arrSlider = $data['slider'];
	$arrBanner = $data['banner'];
	//$arrProductos = $data['productos'];
 ?>
	<!-- Slider -->
	<section class="section-slide">
		<div class="wrap-slick1">
			<div class="slick1">
			<?php 
			for ($i=0; $i < count($arrSlider) ; $i++) { 
				$ruta = $arrSlider[$i]['ruta'];
			 ?>
				<div class="item-slick1" style="background-image: url(<?= $arrSlider[$i]['portada'] ?>);">
					<div class="container h-full">
						<div class="flex-col-l-m h-full p-t-100 p-b-30 respon5">
							<div class="layer-slick1 animated visible-false" data-appear="fadeInDown" data-delay="0">
								<span class="ltext-101 cl2 respon2" style="color: white;">
									<?= $arrSlider[$i]['descripcion'] ?>
								</span>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="fadeInUp" data-delay="800">
								<h2 class="ltext-201 cl2 p-t-19 p-b-43 respon1" style="color: white;">
									<?= $arrSlider[$i]['nombre'] ?>
								</h2>
							</div>
								
							<div class="layer-slick1 animated visible-false" data-appear="zoomIn" data-delay="1600">
								<a href="<?= base_url().'/tienda/categoria/'.$arrSlider[$i]['idcategoria'].'/'.$ruta; ?>" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04">
									Ver Evento
								</a>
							</div>
						</div>
					</div>
				</div>
			<?php 
			}
			?>
			</div>
		</div>
	</section>

	<!-- Banner -->
	<div class="sec-banner bg0 p-t-80 p-b-50">
		<div class="container">
			<div class="row">
				<?php 
				for ($j=0; $j < count($arrBanner); $j++) {
					$ruta = $arrBanner[$j]['ruta']; 
				 ?>
				<div class="col-md-6 col-xl-4 p-b-30 m-lr-auto">
					<!-- Block1 -->
					<div class="block1 wrap-pic-w">
						<img src="<?= $arrBanner[$j]['portada'] ?>" alt="<?= $arrBanner[$j]['nombre'] ?>">

						<a href="<?= base_url().'/tienda/categoria/'.$arrBanner[$j]['idcategoria'].'/'.$ruta; ?>" class="block1-txt ab-t-l s-full flex-col-l-sb p-lr-38 p-tb-34 trans-03 respon3">
							<div class="block1-txt-child1 flex-col-l">
								<span class="block1-name ltext-102 trans-04 p-b-8">
									<?= $arrBanner[$j]['nombre'] ?>
								</span>
								<!-- <span class="block1-info stext-102 trans-04">
									Spring 2018
								</span> -->
							</div>
							<div class="block1-txt-child2 p-b-4 trans-05">
								<div class="block1-link stext-101 cl0 trans-09">
									Ver Evento
								</div>
							</div>
						</a>
					</div>
				</div>
				<?php 
				}
				 ?>
			</div>
		</div>
	</div>
				
	</section>
<?php 
	footerTienda($data);
 ?>

