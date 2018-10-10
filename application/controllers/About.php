<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends Public_Controller
{
 
  function __construct()
  {
  	// 	$this->data['meta']['title'] = 'E-surf - About-Us';
   //    $this->data['meta']['robot'] = true;
   //      $this->data['meta']['general'] = false;
   //       $this->data['meta']['og'] = true;
   // $this->data['meta']['twitter']= true;
    parent::__construct();

  }
	public function index()
	{
// 		$e = array(
// 	'general' => true, //description
// 	'og' => true,
// 	'twitter'=> true,
// 	'robot'=> true
// );
//$this->data['meta']=meta_tags($e, $title = '', $desc = '', $imgurl ='', $url = '');
		  $this->data['page_title'] = 'E-surf -  About-Us';
	 // $this->data['meta']['title'] = 'My specific title';
  //   $this->data['content'] = 'topic';
    // $this->load->view('userarea/template',$this->data);
 		  $this->render('about');
	}
}
