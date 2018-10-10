<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blogpost extends Public_Controller
{
 
  function __construct()
  {
   // $this->data['meta']['title'] = 'E-surf-Blog';
    parent::__construct();
     $this->load->helper('text');
     $this->load->model('Welcome_model');
        $this->load->library('session');
    $this->load->library('ion_auth');

  }
    public function index()
  {
        
      //$this->render('blog');
  }
	public function view($sec_id)
	{
    //$sec_id=$this->uri->segment(3);
    $r=$this->Welcome_model->get_title($sec_id);
    $this->data['page_title'] = $r;
		   $this->data['users'] = $this->ion_auth->users()->result();
		    $this->data['getblogpost'] = $this->Welcome_model->get_one_blog_post($sec_id);
 		  $this->render('blogpost');
	}
function dele($id) {
//$id = $this->uri->segment(3);
$id=$this->Bs_admin_model->delet($id);
 if($id!=TRUE){

                // Display error message
         $this->session->set_flashdata('2flashError', 'An Error occured ,Please Try again.');
     $this->render('admin/dashboard_view');
    }
    else{
      $this->session->set_flashdata('2flashSuccess', 'Change Submitted Successfully....!!!!  Thank You.');
      $this->render('admin/dashboard_view');
    }
}




  

}
