<?php defined('BASEPATH') OR exit('No direct script access allowed');
 
class Dashboard extends Admin_Controller
{
 
  function __construct()
  {
    parent::__construct();
         $this->load->helper('text');
     $this->load->model('Message_model');
            $this->load->model('Welcome_model');
        $this->load->library('session');
    $this->load->library('ion_auth');
        $this->load->library('pagination');
     if(!$this->ion_auth->in_group('admin'))
        {
           // $this->postal->add('You are not allowed to visit the Users page','error');
               redirect('admin/user/logout', 'refresh');
        }
    // $this->data['sch'] = $this->Welcome_model->get_user_schabr();
    // $this->data['avatar'] = $this->Welcome_model->get_user_avatar();
    //  $this->data['recordb'] = $this->Message_model->get_new_messages();
  }
 
  public function index()
  {
      $this->data['page_title'] = 'Dashboard';
  // init params
      $params = array();
        $limit_per_page = 3;
        $page = ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) : 0;
        $total_records = $this->Welcome_model->get_total();
     
        if ($total_records > 0)
        {
            // get current page records
            $this->data["results"]= $this->Welcome_model->get_current_page_records($limit_per_page, $page*$limit_per_page);
                 
            $config['base_url'] = base_url() . 'dash/index';
            $config['total_rows'] = $total_records;
            $config['per_page'] = $limit_per_page;
            $config["uri_segment"] = 3;
             
            // custom paging configuration
            $config['num_links'] = 2;
            $config['use_page_numbers'] = TRUE;
            $config['reuse_query_string'] = TRUE;
             
            $config['full_tag_open'] = '<div class="pagination">';
            $config['full_tag_close'] = '</div>';
             
            $config['first_link'] = 'First Page';
            $config['first_tag_open'] = '<span class="firstlink">';
            $config['first_tag_close'] = '</span>';
             
            $config['last_link'] = 'Last Page';
            $config['last_tag_open'] = '<span class="lastlink">';
            $config['last_tag_close'] = '</span>';
             
            $config['next_link'] = 'Next Page';
            $config['next_tag_open'] = '<span class="nextlink">';
            $config['next_tag_close'] = '</span>';
 
            $config['prev_link'] = 'Prev Page';
            $config['prev_tag_open'] = '<span class="prevlink">';
            $config['prev_tag_close'] = '</span>';
 
            $config['cur_tag_open'] = '<span class="curlink">';
            $config['cur_tag_close'] = '</span>';
 
            $config['num_tag_open'] = '<span class="numlink">';
            $config['num_tag_close'] = '</span>';
             
            $this->pagination->initialize($config);
         
         // build paging links
            $this->data["links"] = $this->pagination->create_links();
        }

 $this->render('admin/dashboard_view');
  //$this->render('dash');
  }


   public function custom()
    {
    
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
             
            $config['full_tag_open'] = '<div class="pagination">';
            $config['full_tag_close'] = '</div>';
             
            $config['first_link'] = 'First Page';
            $config['first_tag_open'] = '<span class="firstlink">';
            $config['first_tag_close'] = '</span>';
             
            $config['last_link'] = 'Last Page';
            $config['last_tag_open'] = '<span class="lastlink">';
            $config['last_tag_close'] = '</span>';
             
            $config['next_link'] = 'Next Page';
            $config['next_tag_open'] = '<span class="nextlink">';
            $config['next_tag_close'] = '</span>';
 
            $config['prev_link'] = 'Prev Page';
            $config['prev_tag_open'] = '<span class="prevlink">';
            $config['prev_tag_close'] = '</span>';
 
            $config['cur_tag_open'] = '<span class="curlink">';
            $config['cur_tag_close'] = '</span>';
 
            $config['num_tag_open'] = '<span class="numlink">';
            $config['num_tag_close'] = '</span>';
             
            $this->pagination->initialize($config);
         
         // build paging links
            $this->data["links"] = $this->pagination->create_links();
        }
            $this->render('blog');
    }

// Set array for PAGINATION LIBRARY, and show view data according to page.
// public function iicontact_info(){
// $config = array();
// $config["base_url"] = base_url() . "/admin/iicontact_info/";
// $total_row = $this->Welcome_model->record_count();
// $config["total_rows"] = $total_row;
// $config["per_page"] = 1;
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
