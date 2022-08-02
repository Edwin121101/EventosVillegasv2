<?php 
	class Donaciones extends Controllers{
		public function __construct()
		{
			parent::__construct();
			session_start();
		}

		public function donaciones()
		{
			$data['page_tag'] = NOMBRE_EMPESA;
			$data['page_title'] = NOMBRE_EMPESA;
			$data['page_name'] = "EventosVillegas";
			$this->views->getView($this,"donaciones",$data); 
		}

	}
 ?>