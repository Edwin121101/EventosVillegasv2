<?php
	require_once("Models/TCategoria.php");
	class Oferta extends Controllers{
		use TCategoria;
		public function __construct()
		{
			parent::__construct();
			session_start();
		}

		public function oferta()
		{
			$data['page_tag'] = NOMBRE_EMPESA;
			$data['page_title'] = NOMBRE_EMPESA;
			$data['page_name'] = "EventosVillegas";
			$data['banner'] = $this->getCategoriasT(CAT_OFERTA);
			$this->views->getView($this,"oferta",$data); 
		}
	}
 ?>