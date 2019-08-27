<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller {

	public $viewFolder="";
	public function __construct()
	{
		parent::__construct();
		$this->viewFolder ="product_v";
	}
	public function index()
	{

		$this->load->view("{$this->viewFolder}/list/index");
	}

}
