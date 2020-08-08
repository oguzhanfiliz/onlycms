<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    public $viewFolder = "";
//    public $user;

    public function __construct()
    {
        parent::__construct();

        $this->viewFolder = "dashboard_v";
//        $this->user = get_active_user();

        if(!get_active_user()){
            redirect(base_url("login"));
        }

    }

    public function index()
	{

	    $viewData = new stdClass();
        $viewData->viewFolder = $this->viewFolder;
        $viewData->subViewFolder = "list";

		$this->load->view("{$viewData->viewFolder}/{$viewData->subViewFolder}/index", $viewData);
	}
}
