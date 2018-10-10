<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends Gen_Controller
{
 
  function __construct()
  {
   //   $this->data['meta']['title'] = 'E-surf - Online';
    parent::__construct();
   $this->load->helper('text');
     $this->load->model('Welcome_model');
    $this->load->library('ion_auth');
       $this->load->library('pagination');
  }
	public function index()
	{
    // init params
      $params = array();
        $limit_per_page = 3;
        $page = ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) : 0;
        $total_records = $this->Welcome_model->get_total();
     
        if ($total_records > 0)
        {
            // get current page records
            $this->data["result"]= $this->Welcome_model->get_current_page_records($limit_per_page, $page*$limit_per_page);
           
        }
		  $this->render('welcome_message');
	}
}
