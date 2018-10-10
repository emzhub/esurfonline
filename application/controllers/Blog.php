<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends Public_Controller
{
 
  function __construct()
  {
      //$this->data['meta']['title'] = 'E-surf-Blog';
    parent::__construct();
     $this->load->helper('text');
     $this->load->model('Welcome_model');
        $this->load->library('session');
    $this->load->library('ion_auth');
       $this->load->library('pagination');

  }


public function index() 
    {
          $this->data['page_title'] = 'E-surf -  Blog';
        // init params
      $params = array();
        $limit_per_page = 3;
        $page = ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) : 0;
        $total_records = $this->Welcome_model->get_total();
     
        if ($total_records > 0)
        {
            // get current page records
            $this->data["results"]= $this->Welcome_model->get_current_page_records($limit_per_page, $page*$limit_per_page);
                 
            $config['base_url'] = base_url() . 'blog/custom';
            $config['total_rows'] = $total_records;
            $config['per_page'] = $limit_per_page;
            $config["uri_segment"] = 3;
             
            // custom paging configuration
            $config['num_links'] = 2;
            $config['use_page_numbers'] = TRUE;
            $config['reuse_query_string'] = TRUE;
             
               $config['full_tag_open'] = '  <ul class="pagination">';
            $config['full_tag_close'] = ' </ul>';
             
            $config['first_link'] = '&laquo;';
            $config['first_tag_open'] = '  <li class="disabled"><a href="#">';
            $config['first_tag_close'] = '</a></li>';
             
            $config['last_link'] = 'Last Page';
            $config['last_tag_open'] = '    <li class="page-item"><a class="page-link">';
            $config['last_tag_close'] = '</a></li>';
             
            $config['next_link'] = '&raquo; Next Page';
            $config['next_tag_open'] = ' <li>';
            $config['next_tag_close'] = '</li>';
 
            $config['prev_link'] = 'Prev Page';
            $config['prev_tag_open'] = '<li class="page-item"><a class="page-link" aria-label="Previous"><span aria-hidden="true">&laquo;</span><span class="sr-only">';
            $config['prev_tag_close'] = '</span>  </a></li>';
 
            $config['cur_tag_open'] = '<li class="active"><a href="#">';
            $config['cur_tag_close'] = '</a></li>';
 
            $config['num_tag_open'] = '<li>';
            $config['num_tag_close'] = ' </li>';
             
            $this->pagination->initialize($config);
         
         // build paging links
            $this->data["links"] = $this->pagination->create_links();
        }
            $this->render('blog');
    }
     
    public function custom()
    {
    
           $this->data['page_title'] = 'E-surf -  Blog';
        // init params
        $params = array();
        $limit_per_page = 3;
        $page = ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) : 0;
        $total_records = $this->Welcome_model->get_total();
     
        if ($total_records > 0)
        {
            // get current page records
            $this->data["results"]= $this->Welcome_model->get_current_page_records($limit_per_page, $page*$limit_per_page);
                 
            $config['base_url'] = base_url() . 'blog/custom';
            $config['total_rows'] = $total_records;
            $config['per_page'] = $limit_per_page;
            $config["uri_segment"] = 3;
             
            // custom paging configuration
            $config['num_links'] = 2;
            $config['use_page_numbers'] = TRUE;
            $config['reuse_query_string'] = TRUE;
             
            $config['full_tag_open'] = '  <ul class="pagination">';
            $config['full_tag_close'] = ' </ul>';
             
            $config['first_link'] = '&laquo;';
            $config['first_tag_open'] = '  <li class="disabled"><a href="#">';
            $config['first_tag_close'] = '</a></li>';
             
            $config['last_link'] = 'Last Page';
            $config['last_tag_open'] = '    <li class="page-item"><a class="page-link">';
            $config['last_tag_close'] = '</a></li>';
             
            $config['next_link'] = '&raquo; Next Page';
            $config['next_tag_open'] = ' <li>';
            $config['next_tag_close'] = '</li>';
 
            $config['prev_link'] = 'Prev Page';
            $config['prev_tag_open'] = '<li class="page-item"><a class="page-link" aria-label="Previous"><span aria-hidden="true">&laquo;</span><span class="sr-only">';
            $config['prev_tag_close'] = '</span>  </a></li>';
 
            $config['cur_tag_open'] = '<li class="active"><a href="#">';
            $config['cur_tag_close'] = '</a></li>';
 
            $config['num_tag_open'] = '<li>';
            $config['num_tag_close'] = ' </li>';
             
            $this->pagination->initialize($config);
         
         // build paging links
            $this->data["links"] = $this->pagination->create_links();
        }
            $this->render('blog');
    }


// 	public function index()
// 	{
// 		   // $this->data['users'] = $this->ion_auth->users()->result();
// 		   //  $this->data['blogpost'] = $this->Welcome_model->get_blog_post();
//      $config = array();
// $config["base_url"] = base_url() . "/blog/index/";
// $total_row = $this->Welcome_model->record_count();
// $config["total_rows"] = $total_row;
// $config["per_page"] = 2;
// $config['use_page_numbers'] = TRUE;
// $config['num_links'] = $total_row;
// $config['cur_tag_open'] = '&nbsp;<a class="current">';
// $config['cur_tag_close'] = '</a>';
// $config['next_link'] = 'Next';
// $config['prev_link'] = 'Previous';

// $this->pagination->initialize($config);
// if($this->uri->segment(3)){
// $page = ($this->uri->segment(3)) ;
// }
// else{
// $page = 1;
// }
// //$this->data['blogpost'] = $this->Welcome_model->get_blog_post();
// $this->data['blogpost'] = $this->Welcome_model->get_blog_post($config["per_page"], $page);
// //$this->data["results"] = $this->Welcome_model->get_blog_post($config["per_page"], $page);
// $str_links = $this->pagination->create_links();
// $this->data["links"] = explode('&nbsp;',$str_links );
//  		  $this->render('blog');
// 	}

// // Set array for PAGINATION LIBRARY, and show view data according to page.
// public function iicontact_info(){
// $config = array();
// $config["base_url"] = base_url() . "/blog/";
// $total_row = $this->Welcome_model->record_count();
// $config["total_rows"] = $total_row;
// $config["per_page"] = 2;
// $config['use_page_numbers'] = TRUE;
// $config['num_links'] = $total_row;
// $config['cur_tag_open'] = '&nbsp;<a class="current">';
// $config['cur_tag_close'] = '</a>';
// $config['next_link'] = 'Next';
// $config['prev_link'] = 'Previous';

// $this->pagination->initialize($config);
// if($this->uri->segment(3)){
// $page = ($this->uri->segment(3)) ;
// }
// else{
// $page = 1;
// }
// $this->data['blogpost'] = $this->Welcome_model->get_blog_post($config["per_page"], $page);
// //$this->data["results"] = $this->Welcome_model->get_blog_post($config["per_page"], $page);
// $str_links = $this->pagination->create_links();
// $this->data["links"] = explode('&nbsp;',$str_links );

//   $this->render('admin/view/tpl_view_blogpost');
// }

}
