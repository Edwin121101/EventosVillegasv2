<?php
	require_once("Models/TCategoria.php");
	class Proximos extends Controllers{
		use TCategoria;
		public function __construct()
		{
			parent::__construct();
			session_start();
		}

		public function proximos()
		{
			$data['page_tag'] = NOMBRE_EMPESA;
			$data['page_title'] = NOMBRE_EMPESA;
			$data['page_name'] = "EventosVillegas";
			$data['banner'] = $this->getCategoriasT(CAT_PROXIMOS);
			$this->views->getView($this,"proximos",$data); 
		}
	}
 ?>