<?php
	require_once("Models/TCategoria.php");
	class Pasados extends Controllers{
		use TCategoria;
		public function __construct()
		{
			parent::__construct();
			session_start();
		}

		public function pasados()
		{
			$data['page_tag'] = NOMBRE_EMPESA;
			$data['page_title'] = NOMBRE_EMPESA;
			$data['page_name'] = "EventosVillegas";
			$data['banner'] = $this->getCategoriasT(CAT_PASADOS);
			$this->views->getView($this,"pasados",$data); 
		}
	}
 ?>